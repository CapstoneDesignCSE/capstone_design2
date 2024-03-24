import cv2
import cvzone
import pandas as pd
from ultralytics import YOLO
from vidgear.gears import CamGear
from code.SmartBarricade.CarDetection.tracker import Tracker


class CarDetectionByVideo:
    model = YOLO('../Model/yolov8s.pt')

    # 다운로드한 동영상 파일 경로
    video_path = '/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/DataSet/sample.mp4'
    # video_path = '/Users/we/PycharmProjects/capstone_design2/code/DataSet/sample.mp4'
    # CamGear를 사용하여 동영상 스트리밍 시작
    stream = CamGear(source=video_path).start()

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
            x3, y3, x4, y4, id1 = bbox
            cx = int(x3 + x4) // 2
            cy = int(y3 + y4) // 2

            cv2.circle(frame, (cx, cy), 4, (0, 0, 255), -1)
            cv2.rectangle(frame, (x3, y3), (x4, y4), (255, 255, 255), 2)
            cvzone.putTextRect(frame, f'{id1}', (x3, y3), 1, 1)

        cv2.imshow("RGB", frame)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # CamGear 스트리밍 정리
    stream.stop()
    cv2.destroyAllWindows()