import cv2
import cvzone
from ultralytics import YOLO
from ultralytics.solutions import speed_estimation
from code.smart_barricade.car_detection.tracker import Tracker
import pandas as pd

# YOLO 모델 초기화
yolo_model = YOLO('../../Model/yolov8s.pt')  # YOLO 모델 선택

# RTSP 스트림 URL
video = 'rtsp://admin:000115@112.154.179.73:554/stream1'

# 스트림 캡처
cap = cv2.VideoCapture(video)

# w, h, fps = (int(cap.get(x)) for x in (cv2.CAP_PROP_FRAME_WIDTH, cv2.CAP_PROP_FRAME_HEIGHT, cv2.CAP_PROP_FPS))
#
# # VideoWriter 객체 생성
# video_writer = cv2.VideoWriter("speed_estimation.avi",
#                                cv2.VideoWriter_fourcc(*'XVID'),  # 코덱 설정
#                                fps,
#                                (w, h))

line_pts = [(0, 360), (1280, 360)]



def RGB(event, x, y, flags, param):
    if event == cv2.EVENT_MOUSEMOVE:
        colorsBGR = [x, y]
        print(colorsBGR)


cv2.namedWindow('RGB')
cv2.setMouseCallback('RGB', RGB)
my_file = open("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/DataSet/coco.txt", "r")
data = my_file.read()
class_list = data.split("\n")
count = 0
tracker = Tracker()

# Init speed-estimation obj
speed_obj = speed_estimation.SpeedEstimator()
speed_obj.set_args(reg_pts=line_pts,
                   names=class_list,  # 빈 리스트 전달
                   view_img=True)

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        print("스트림을 받아올 수 없습니다.")
        break

    count += 1
    if count % 2 != 0:
        continue

    frame = cv2.resize(frame, (1120, 720))
    results = yolo_model.predict(frame)
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
        x3, y3, x4, y4, id1 = bbox
        cx = int(x3 + x4) // 2
        cy = int(y3 + y4) // 2

        cv2.circle(frame, (cx, cy), 4, (0, 0, 255), -1)
        cv2.rectangle(frame, (x3, y3), (x4, y4), (255, 255, 255), 2)
        cvzone.putTextRect(frame, f'{id1}', (x3, y3), 1, 1)

    cv2.imshow("RGB", frame)
    # 영상 저장
    # video_writer.write(frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# 자원 해제
cap.release()
# video_writer.release()
cv2.destroyAllWindows()
