import cv2
import numpy as np
import supervision as sv
from inference.models.utils import get_roboflow_model

# RTSP 스트림 URL
rtsp_url = 'rtsp://admin:000115@112.154.179.73:554/stream1'

# OpenCV로 RTSP 스트림 캡처
cap = cv2.VideoCapture(rtsp_url)

# supervision 라이브러리에서 사용할 모델 로드
model = get_roboflow_model("yolov8x-640")

# 객체 추적을 위한 ByteTrack 객체 생성
byte_track = sv.ByteTrack()

# 객체 표시에 사용할 두께 계산
thickness = sv.calculate_dynamic_line_thickness(resolution_wh=(640, 480))

# 프레임 반복 처리
while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        print("스트림을 받아올 수 없습니다.")
        break

    # supervision 라이브러리를 사용하여 객체 탐지
    detections = sv.Detections.from_inference(model.infer(frame)[0])

    # 객체 추적 수행
    detections = byte_track.update_with_detections(detections=detections)

    # 탐지된 객체를 화면에 표시
    annotated_frame = sv.BoundingBoxAnnotator(thickness=thickness).annotate(scene=frame, detections=detections)

    # 화면에 결과 표시
    cv2.imshow("Annotated Frame", annotated_frame)

    # 'q' 키를 누르면 종료
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# 자원 해제
cap.release()
cv2.destroyAllWindows()
