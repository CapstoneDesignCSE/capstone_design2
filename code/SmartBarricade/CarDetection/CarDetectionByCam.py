import datetime
import cv2
import pandas as pd
import numpy as np
import boto3

import code.Server.producer
import code.SmartBarricade.aws.awsS3Connect as aws
from tracker import Tracker
from ultralytics import YOLO


class CarDetectionByCam:

    # OpenCV를 사용하여 탐지된 객체 이미지 추출 및 로컬에 저장
    def save_detected_object_image(self, frame, x1, y1, x2, y2, image_name):
        detected_object = frame[y1:y2, x1:x2]
        cv2.imwrite(image_name, detected_object)

    # 객체 탐지 결과 신뢰성 60% 이상으로 설정
    CONFIDENCE_THRESHOLD = 0.6

    # 박스 및 텍스트 색상 정의
    GREEN = (0, 255, 0)
    WHITE = (255, 255, 255)

    # Data Set 정의
    coco = open('../../DataSet/coco.txt', 'r')
    data = coco.read()
    class_list = data.split('\n')
    coco.close()

    # YOLO 모델 정의
    model = YOLO('../Model/yolov8n.pt')

    # VideoCapture(0) : 웹 캠 사용 - Iphone Mac 원격 연결
    # VideoCapture(1) : 외부 카메라 사용 - Iphone Mac Local 연결 (C Type)
    # cap = cv2.VideoCapture(1)

    # cap = cv2.VideoCapture('rtsp://admin:000115@112.154.179.73:50393/stream1')
    cap = cv2.VideoCapture('../../DataSet/testCase2.mp4')
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)

    fps = cap.get(cv2.CAP_PROP_FPS)

    # Define the ROI coordinates (x, y, width, height)
    roi_x, roi_y, roi_w, roi_h = 75, 75, 1000, 700

    tracker = Tracker()
    previous_positions = {}
    previous_widths = {}
    speeds = {}
    frame_count = 0
    scaling_factor = 0.02  # 픽셀당 실제 거리(미터)로 변경
    # Kafka
    # 브로커와 토픽명을 지정한다.
    broker = 'localhost:9092'
    topic = 'Smart-Barricade'
    message_producer = code.Server.producer.MessageProducer(broker, topic)

    # 스트리밍 시작
    while True:
        start = datetime.datetime.now()
        ret, frame = cap.read()
        if not ret:
            print('Cam Error')
            break
        frame = cv2.resize(frame, (1280, 720))
        roi_frame = frame[roi_y:roi_y + roi_h, roi_x:roi_x + roi_w]
        # detection = model(frame)[0]
        results = model.predict(roi_frame)
        a = results[0].boxes.data.cpu()
        px = pd.DataFrame(a).astype("float")
        cars = []

        for index, row in px.iterrows():
            if 'car' or 'bus' or 'truck' in class_list[int(row[5])]:
                x1, y1, x2, y2 = int(row[0]), int(row[1]), int(row[2]), int(row[3])
                width = x2 - x1
                height = y2 - y1

                x1 += roi_x
                y1 += roi_y
                x2 += roi_x
                y2 += roi_y

                # Only pass x, y, width, height to the tracker
                cars.append([x1, y1, width, height])  # Update here

        bbox_id = tracker.update(cars)
        for bbox in bbox_id:
            x1, y1, w, h, id = bbox
            x2, y2 = x1 + w, y1 + h
            cx, cy = (x1 + x2) // 2, (y1 + y2) // 2

            if id in previous_positions:
                prev_center, prev_width = previous_positions[id]
                distance_pixels = np.linalg.norm(np.array((cx, cy)) - np.array(prev_center))
            if id not in previous_positions:
                previous_positions[id] = ((cx, cy), frame_count)

            prev_center, prev_frame = previous_positions[id]
            if frame_count - prev_frame >= 10:
                width_ratio = width ** 2 / prev_width ** 2 if prev_width else 1
                corrected_distance = distance_pixels / width_ratio
                distance_pixels = ((cx - prev_center[0]) ** 2 + (cy - prev_center[1]) ** 2) ** 0.5
                distance_meters = distance_pixels * scaling_factor
                time_seconds = (frame_count - prev_frame) / fps
                speed_mps = distance_meters / time_seconds
                speed_kmph = speed_mps * 3.6
                speeds[id] = speed_kmph
                previous_positions[id] = ((cx, cy), frame_count)

            if id in speeds:
                # 탐지된 객체 이미지 저장
                image_name = f'detected_object_{id}.jpg'
                save_detected_object_image(frame, x1, y1, x2, y2, image_name)
                # 이미지를 S3에 업로드
                aws.upload_to_aws(image_name, f'detected_objects/{image_name}')
                # Draw bbox
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                label = int(data[5])
                # Display speed
                cv2.putText(frame, f"ID: {id} Class: {class_list[label]} Speed: {speeds[id]:.2f} km/h", (x1, y2 - 10), cv2.FONT_HERSHEY_COMPLEX,
                            0.5,
                            (0, 255, 0), 2)

                # [Kafka Message 발행] Topic: Smart-Barricade
                current_time = datetime.datetime.now()
                kafka_json_data = {
                    "id": str(id),
                    "speed": f"{speeds[id]:.2f}",
                    "pub_dt": current_time.strftime('%Y-%m-%d %H:%M:%S')
                }
                message_producer.send_message(kafka_json_data)

                print("send-data: ", kafka_json_data)
        cv2.rectangle(frame, (roi_x, roi_y), (roi_x + roi_w, roi_y + roi_h), (255, 0, 0), 2)  # ROI in blue
        frame_count += 1
        cv2.imshow("RGB", frame)

        # for data in detection.boxes.data.tolist():  # data : [xmin, ymin, xmax, ymax, confidence_score, class_id]
        #     confidence = float(data[4])
        #     if confidence < CONFIDENCE_THRESHOLD:
        #         continue
        #
        #     xmin, ymin, xmax, ymax = int(data[0]), int(data[1]), int(data[2]), int(data[3])
        #     label = int(data[5])
        #     cv2.rectangle(frame, (xmin, ymin), (xmax, ymax), GREEN, 2)
        #     cv2.putText(frame, class_list[label] + ' ' + str(round(confidence, 2)) + '%', (xmin, ymin), cv2.FONT_ITALIC,
        #                 1, WHITE, 2)
        #
        # end = datetime.datetime.now()
        #
        # total = (end - start).total_seconds()
        # print(f'Time to process 1 frame: {total * 1000:.0f} milliseconds')
        #
        # fps = f'FPS: {1 / total:.2f}'
        # cv2.putText(frame, fps, (10, 20), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2)
        #
        # cv2.imshow('frame', frame)

        if cv2.waitKey(1) == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()
