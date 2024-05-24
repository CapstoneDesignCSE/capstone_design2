import cv2
from ultralytics import YOLO
from ultralytics.solutions import speed_estimation


model = YOLO('yolov8n.pt')
names = model.names
model.classes = [0,1,2,3,5,7] #특정 class 만 탐지, umbrella 프리스비 이런거 빠진
# model.to("cuda") #GPU 사용
# RTSP 스트림 URL (사용자 이름과 비밀번호 포함)
video = 'rtsp://admin:000115@112.154.179.73:554/stream1'

#샘플 영상 사용
# video="./sample.mp4"


# 스트림 캡처
cap = cv2.VideoCapture(video)

w, h, fps = (int(cap.get(x)) for x in (cv2.CAP_PROP_FRAME_WIDTH, cv2.CAP_PROP_FRAME_HEIGHT, cv2.CAP_PROP_FPS))

# Video writer

# VideoWriter 객체 생성
video_writer = cv2.VideoWriter("speed_estimation.avi",
                               cv2.VideoWriter_fourcc(*'XVID'),  # 코덱 설정
                               fps,
                               (w, h))

line_pts = [(0, 360), (1280, 360)]

# Init speed-estimation obj
speed_obj = speed_estimation.SpeedEstimator()
speed_obj.set_args(reg_pts=line_pts,
                   names=names,
                   view_img=True)

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        print("스트림을 받아올 수 없습니다.")
        break
    # YOLO 모델을 이용한 객체 감지
    tracks = model.track(frame, persist=True, show=False)
    frame = speed_obj.estimate_speed(frame, tracks)

    results = model(frame)

    # Check what 'results' contains
    if isinstance(results, list):
        # If 'results' is a list, then we may need to iterate over it
        for result in results:
            # Here you need to add your method to draw the detections
            # This is placeholder code and will depend on the structure of 'result'
            annotated_frame = frame  # Replace this with your actual rendering code
    else:
        # If 'results' is not a list, then it's likely a 'Results' object
        annotated_frame = results.render()[0]

    # 처리된 프레임을 화면에 표시
    cv2.imshow('YOLO Object Detection', annotated_frame)

    # 영상 저장
    video_writer.write(annotated_frame)

    # 'q'를 누르면 종료
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# 자원 해제
cap.release()
cv2.destroyAllWindows()