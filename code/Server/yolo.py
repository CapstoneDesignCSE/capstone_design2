import producer
# 속도, bbox, class, roi


import cv2
import pandas as pd
from ultralytics import YOLO
from tracker import Tracker
import numpy as np

# Kafka Message json 형식으로 send
import json

model = YOLO('yolov8x.pt')
model.classes = [0, 1, 2, 3, 5, 7]


def RGB(event, x, y, flags, param):
    if event == cv2.EVENT_MOUSEMOVE:
        print([x, y])


cv2.namedWindow('RGB')
cv2.setMouseCallback('RGB', RGB)

cap = cv2.VideoCapture('rtsp://admin:000115@112.154.179.73:50393/stream1')
cap.set(cv2.CAP_PROP_BUFFERSIZE, 1)
# cap = cv2.VideoCapture('../CarDetection/sample.mp4')

with open("coco.txt", "r") as my_file:
    data = my_file.read()
    class_list = data.split("\n")
fps = cap.get(cv2.CAP_PROP_FPS)
scaling_factor = 0.06  # 픽셀당 실제 거리(미터)로 변경
tracker = Tracker()
previous_positions = {}
previous_widths = {}

speeds = {}
frame_count = 0

# Define the ROI coordinates (x, y, width, height)
roi_x, roi_y, roi_w, roi_h = 750, 0, 530, 520  # Example coordinates

# Kafka
# 브로커와 토픽명을 지정한다.
broker = 'localhost:9092'
topic = 'Smart-Barricade'
message_producer = producer.MessageProducer(broker, topic)

while True:
    ret, frame = cap.read()
    if not ret:
        break
    frame = cv2.resize(frame, (1280, 720))
    roi_frame = frame[roi_y:roi_y + roi_h, roi_x:roi_x + roi_w]
    results = model.predict(roi_frame)
    a = results[0].boxes.data.cpu()
    # a = results[0].boxes.data
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
            # Draw bbox
            cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
            # Display speed
            cv2.putText(frame, f"ID: {id} Speed: {speeds[id]:.2f} km/h", (x1, y2 - 10), cv2.FONT_HERSHEY_COMPLEX, 0.5,
                        (0, 255, 0), 2)

            # [Kafka Message 발행] Topic: Smart-Barricade
            kafka_json_data = {
                "id": str(id),
                "speed": f"{speeds[id]:.2f}"
            }
            message_producer.send_message(kafka_json_data)

            print("send-data: ", kafka_json_data)
    cv2.rectangle(frame, (roi_x, roi_y), (roi_x + roi_w, roi_y + roi_h), (255, 0, 0), 2)  # ROI in blue
    frame_count += 1
    cv2.imshow("RGB", frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
