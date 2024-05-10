import cv2
import cvzone
import numpy as np
import pandas as pd
import code.Server.producer

from ultralytics import YOLO
from vidgear.gears import CamGear
from code.SmartBarricade.CarDetection.tracker import Tracker


previous_positions = {}
previous_widths = {}

speeds = {}
frame_count = 0
scaling_factor = 0.06  # 픽셀당 실제 거리(미터)로 변경
class CarDetectionByVideo:
    model = YOLO('../Model/yolov8s.pt')
    model.classes = [0, 1, 2, 3, 5, 7]
    broker = 'localhost:9092'
    topic = 'Smart-Barricade'
    message_producer = code.Server.producer.MessageProducer(broker, topic)

    # 다운로드한 동영상 파일 경로
    # video_path = '/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/DataSet/sample.mp4'
    video_path = 'rtsp://admin:000115@112.154.179.73:50393/stream1'

    roi_x, roi_y, roi_w, roi_h = 750, 0, 530, 520  # Example coordinates

    # CamGear를 사용하여 동영상 스트리밍 시작
    stream = CamGear(source=video_path).start()
    fps = 30
    def RGB(event, x, y, flags, param):
        if event == cv2.EVENT_MOUSEMOVE:
            colorsBGR = [x, y]
            print(colorsBGR)

    cv2.namedWindow('RGB')
    cv2.setMouseCallback('RGB', RGB)

    # my_file = open("/Users/we/PycharmProjects/capstone_design2/code/DataSet/coco.txt", "r")
    my_file = open("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/DataSet/coco.txt", "r")
    data = my_file.read()
    class_list = data.split("\n")

    count = 0
    tracker = Tracker()

    while True:
        frame = stream.read()
        count += 1
        if count % 2 != 0:
            continue

        frame = cv2.resize(frame, (1120, 720))
        results = model.predict(frame)
        a = results[0].boxes.data
        px = pd.DataFrame(a).astype("float")
        list = []
        for index, row in px.iterrows():
            x1 = int(row[0])
            y1 = int(row[1])
            x2 = int(row[2])
            y2 = int(row[3])
            d = int(row[5])
            c = class_list[d]
            if 'car' in c:
                list.append([x1, y1, x2, y2])
        bbox_idx = tracker.update(list)

        for bbox in bbox_idx:
            x3, y3, x4, y4, id = bbox
            cx = int(x3 + x4) // 2
            cy = int(y3 + y4) // 2

            # 24.05.05 추가
            if id in previous_positions:
                prev_center, prev_width = previous_positions[id]
                distance_pixels = np.linalg.norm(np.array((cx, cy)) - np.array(prev_center))
            if id not in previous_positions:
                previous_positions[id] = ((cx, cy), frame_count)

            prev_center, prev_frame = previous_positions[id]
            if frame_count - prev_frame >= 10:
                width_ratio = x2 ** 2 / prev_width ** 2 if prev_width else 1
                corrected_distance = distance_pixels / width_ratio
                distance_pixels = ((cx - prev_center[0]) ** 2 + (cy - prev_center[1]) ** 2) ** 0.5
                distance_meters = distance_pixels * scaling_factor
                time_seconds = (frame_count - prev_frame) / fps
                speed_mps = distance_meters / time_seconds
                speed_kmph = speed_mps * 3.6
                speeds[id] = speed_kmph
                previous_positions[id] = ((cx, cy), frame_count)

            if id in speeds:
                # Draw bbox
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                # Display speed
                cv2.putText(frame, f"ID: {id} Speed: {speeds[id]:.2f} km/h", (x1, y2 - 10), cv2.FONT_HERSHEY_COMPLEX,
                            0.5,
                            (0, 255, 0), 2)

                # [Kafka Message 발행] Topic: Smart-Barricade
                kafka_json_data = {
                    "id": str(id),
                    "speed": f"{speeds[id]:.2f}"
                }
                message_producer.send_message(kafka_json_data)

                print("send-data: ", kafka_json_data)

        # cv2.circle(frame, (cx, cy), 4, (0, 0, 255), -1)
        cv2.rectangle(frame, (roi_x, roi_y), (roi_x + roi_w, roi_y + roi_h), (255, 255, 255), 2)
        # cvzone.putTextRect(frame, f'{id}', (x3, y3), 1, 1)
        frame_count += 1
        cv2.imshow("RGB", frame)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # CamGear 스트리밍 정리
    stream.stop()
    cv2.destroyAllWindows()
