import datetime
from pathlib import Path

import cv2
import pandas as pd
import numpy as np
import boto3
import code.Server.producer
import code.SmartBarricade.aws.awsS3Connect as aws
from tracker import Tracker
from ultralytics import YOLO

# 공지
"""
Project: Smart Barricade System
Author: Seung Min Chae
Date: 2024-05-23

Description:

    This project is designed to detect and track vehicles using a camera feed.
    It utilizes the YOLO model for object detection and calculates the speed
    of detected vehicles. The detected data is then sent to a Kafka topic for
    further processing with monitoring system of SB Admin-Server.



주요 변경 사항
1. __init__ 메서드:
    인스턴스 변수 초기화: 클래스의 모든 주요 변수는 이제 __init__ 메서드 내에서 초기화.
        이를 통해 인스턴스 생성 시 필요한 설정을 쉽게 구성 가능.

2. 인스턴스 변수 사용:
    self.를 사용하여 인스턴스 변수로 접근.
        (self.model, self.cap, self.roi_x 등.)

3. 정적 메서드:
    save_detected_object_image 메서드는 정적 메서드로 정의되어, 클래스의 인스턴스 없이도 호출 가능.

4. 메인 로직:
    run 메서드 내에서 인스턴스 변수를 사용하여 객체 탐지, 추적 및 속도 계산을 수행.

비효율적인 부분 개선
    1. 불필요한 계산 제거: calculate_speed 메서드를 분리하여 중복 코드 삭제.
    2. 파일 읽기 최적화: Path를 사용하여 간결하게 파일을 읽음.
"""

class CarDetectionByCam:
    def __init__(self):
        # YOLO 모델을 정의
        self.model = YOLO('../Model/yolov8n.pt')

        # Streaming Data 정의
        video_mode = int(
            input(
                "Default: .mp4\n"
                "1: iPhone\n"
                "2: CCTV\n"
                "[Select your Mode]: "
            )
        )
        if video_mode == 1:
            # VideoCapture(0) : 웹 캠 사용 - Iphone Mac 원격 연결
            # VideoCapture(1) : 외부 카메라 사용 - Iphone Mac Local 연결 (C Type)
            try:
                self.cap = cv2.VideoCapture(1)
            except ():
                self.cap = cv2.VideoCapture(0)
        elif video_mode == 2:
            self.cap = cv2.VideoCapture('rtsp://admin:000115@112.154.179.73:50393/stream1')
        else:
            self.cap = cv2.VideoCapture('../../DataSet/testCase2.mp4')
        self.cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
        self.cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)
        self.fps = self.cap.get(cv2.CAP_PROP_FPS)

        # Data Set 정의
        self.class_list = Path('../../DataSet/coco2.txt').read_text().split('\n')

        # 관심 영역 (ROI 정의)
        # Default: 75, 75, 1000, 700
        # RC Car: 275, 350, 1000, 600
        self.roi_x, self.roi_y, self.roi_w, self.roi_h = 75, 75, 1000, 700

        # 트래커를 초기화하고, 이전 프레임에서의 위치 및 속도를 저장하기 위한 딕셔너리를 정의
        self.tracker = Tracker()
        self.previous_positions = {}
        self.previous_widths = {}
        self.speeds = {}
        self.frame_count = 0
        self.scaling_factor = 0.02

        # Kafka
        # 브로커와 토픽명을 지정한다.
        self.broker = 'localhost:9092'
        self.topic = 'Smart-Barricade'
        self.message_producer = code.Server.producer.MessageProducer(self.broker, self.topic)

    def __str__(self):
        return (
            f"CarDetectionByCam("
            f"class_list={self.class_list}, "
            f"model={self.model}, "
            f"cap={self.cap}, "
            f"fps={self.fps}, "
            f"roi_x={self.roi_x}, roi_y={self.roi_y}, roi_w={self.roi_w}, roi_h={self.roi_h}, "
            f"tracker={self.tracker}, "
            f"previous_positions={self.previous_positions}, "
            f"previous_widths={self.previous_widths}, "
            f"speeds={self.speeds}, "
            f"frame_count={self.frame_count}, "
            f"scaling_factor={self.scaling_factor}, "
            f"broker={self.broker}, "
            f"topic={self.topic}, "
            f"message_producer={self.message_producer})"
        )

    # OpenCV를 사용하여 탐지된 객체 이미지 추출 및 로컬에 저장
    @staticmethod
    def save_detected_object_image(frame, x1, y1, x2, y2, image_name):
        detected_object = frame[y1:y2, x1:x2]
        print(image_name)
        cv2.imwrite(image_name, detected_object)

    # 속도 계산
    def calculate_speed(self, cx, cy, prev_center, prev_frame):
        distance_pixels = np.linalg.norm(np.array((cx, cy)) - np.array(prev_center))
        distance_meters = distance_pixels * self.scaling_factor
        time_seconds = (self.frame_count - prev_frame) / self.fps
        speed_mps = distance_meters / time_seconds
        return speed_mps * 3.6

    def run(self):
        # 스트리밍 시작
        while True:
            start = datetime.datetime.now()
            ret, frame = self.cap.read()
            if not ret:
                print('Cam Error')
                break

            frame = cv2.resize(frame, (1280, 720))
            roi_frame = frame[
                            self.roi_y:self.roi_y + self.roi_h,
                            self.roi_x:self.roi_x + self.roi_w
                        ]
            # detection = model(frame)[0]
            results = self.model.predict(roi_frame)
            a = results[0].boxes.data.cpu()
            px = pd.DataFrame(a).astype("float")
            cars = []

            for index, row in px.iterrows():
                if 'car' or 'bus' or 'truck' in self.class_list[int(row[5])]:
                    x1, y1, x2, y2 = int(row[0]), int(row[1]), int(row[2]), int(row[3])
                    width = x2 - x1
                    height = y2 - y1

                    x1 += self.roi_x
                    y1 += self.roi_y
                    x2 += self.roi_x
                    y2 += self.roi_y

                    # Only pass x, y, width, height to the tracker
                    cars.append([x1, y1, width, height])  # Update here

            # 탐지 객체 속도 측정
            bbox_id = self.tracker.update(cars)
            for bbox in bbox_id:
                x1, y1, w, h, id = bbox
                x2, y2 = x1 + w, y1 + h
                cx, cy = (x1 + x2) // 2, (y1 + y2) // 2

                if id in self.previous_positions:
                    prev_center, prev_width = self.previous_positions[id]
                    distance_pixels = np.linalg.norm(np.array((cx, cy)) - np.array(prev_center))
                if id not in self.previous_positions:
                    self.previous_positions[id] = ((cx, cy), self.frame_count)

                prev_center, prev_frame = self.previous_positions[id]
                if self.frame_count - prev_frame >= 10:
                    speed_kmph = self.calculate_speed(cx, cy, prev_center, prev_frame)
                    self.speeds[id] = speed_kmph
                    self.previous_positions[id] = ((cx, cy), self.frame_count)

                if id in self.speeds:
                    uploaded_url = ''
                    if self.speeds[id] > 30:
                        # pass
                        # 탐지된 객체 이미지 local 저장
                        image_name_local = f"../../../assets/detectedImages/detected_object_{id}.jpg"
                        self.save_detected_object_image(frame, x1, y1, x2, y2, image_name_local)

                        image_name = f"smart_barricade_detected_objects/detected_object_{id}.jpg"
                        # local 저장된 이미지를 S3에 업로드
                        uploaded_url = aws.upload_to_aws(image_name_local, image_name)

                    # Draw bbox
                    cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)

                    # Display speed
                    cv2.putText(
                        frame,
                        f"ID: {id} Speed: {self.speeds[id]:.2f} km/h",
                        (x1, y2 - 10), cv2.FONT_HERSHEY_COMPLEX,
                        0.5,
                        (0, 255, 0),
                        2
                    )

                    # [Kafka Message 발행] Topic: Smart-Barricade
                    current_time = datetime.datetime.now()
                    kafka_json_data = {
                        "id": str(id),
                        "speed": f"{self.speeds[id]:.2f}",
                        "uploaded_url": uploaded_url,
                        "pub_dt": current_time.strftime('%Y-%m-%d %H:%M:%S')
                    }
                    self.message_producer.send_message(kafka_json_data)
                    print("Data Sent to Admin-Server: ", kafka_json_data)

            cv2.rectangle(
                frame,
                (self.roi_x, self.roi_y),
                (self.roi_x + self.roi_w, self.roi_y + self.roi_h),
                (255, 0, 0),
                2
            )

            self.frame_count += 1
            cv2.imshow("RGB", frame)

            if cv2.waitKey(1) == ord('q'):
                break

        self.cap.release()
        cv2.destroyAllWindows()


# 객체 생성
car_detection = CarDetectionByCam()

# 객체 인스턴스 Status 확인용 로깅 출력
print(car_detection)

# 객체 실행
car_detection.run()
