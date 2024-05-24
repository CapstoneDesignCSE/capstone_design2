import argparse
from collections import *

import cv2
import numpy as np
import supervision as sv
from inference.models.utils import get_roboflow_model


# detection 되는 객체 중 멀리 떨어진 객체에 대한 detection 세밀화 (탐색 위치 지정: 빨간 박스)
# [[좌 하단], [우 하단], [우 상단], [좌 상단]]
SOURCE = np.array([[50, 600],
                   [1200, 600],
                   [1200, 50],
                   [50, 50]])

TARGET_WIDTH = 25
TARGET_HEIGHT = 50

TARGET = np.array(
    [
        [0, 0],
        [TARGET_WIDTH - 1, 0],
        [TARGET_WIDTH - 1, TARGET_HEIGHT - 1],
        [0, TARGET_HEIGHT - 1]
    ]
)

class ViewTransformer:
    def __init__(self, source: np.ndarray, target: np.ndarray):
        source = source.astype(np.float32)
        target = target.astype(np.float32)
        self.m = cv2.getPerspectiveTransform(source, target)

    def transform_points(self, points: np.ndarray) -> np.ndarray:
        reshaped_points = points.reshape(-1, 1, 2).astype(np.float32)
        transformed_points = cv2.perspectiveTransform(reshaped_points, self.m)
        return transformed_points.reshape(-1, 2)

def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Vehicle Speed Estimation using Inference & Supervision"
    )
    parser.add_argument(
        "--source_video_path",
        required=True,
        help="Path to the source video file",
        type=str,

    )
    return parser.parse_args()

# supervision 의 track_object Docs 확인 시 더 쓸모있는 라이브러리가 많아 보인다.

if __name__ == "__main__":
    # args = parse_arguments()

    video_info = sv.VideoInfo.from_video_path("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/DataSet/sample.mp4")
    model = get_roboflow_model("yolov8x-640")

    # 객체를 track 하기 위해서 supervision 의 ByteTrack() 모듈 사용 시 간편하게 할 수 있다.
    # ByteTrack 모듈은 fps 를 기반 정보로 사용.
    byte_track = sv.ByteTrack(frame_rate=video_info.fps)

    # 객체 표시 선 굵기 및 텍스트 조정
    thickness = sv.calculate_dynamic_line_thickness(
        resolution_wh=video_info.resolution_wh
    )
    text_scale = sv.calculate_dynamic_text_scale(resolution_wh=video_info.resolution_wh)
    bounding_box_annotator = sv.BoundingBoxAnnotator(thickness=thickness)
    lable_annotator = sv.LabelAnnotator(text_scale=text_scale, text_thickness=thickness)

    frame_generater = sv.get_video_frames_generator("/Users/carefreelife/Desktop/INU/2024_5_1/capstone_design2/code/DataSet/sample.mp4")

    # detection 되는 객체 중 멀리 떨어진 객체에 대한 detection 세밀화
    polygon_zone = sv.PolygonZone(SOURCE, frame_resolution_wh=video_info.resolution_wh)

    # 카메라 관점에 따른 실 거리 트랜스폼 진행
    view_transformer = ViewTransformer(source=SOURCE, target=TARGET)

    coordinates = defaultdict(lambda: deque(maxlen=video_info.fps))

    for frame in frame_generater:
        result = model.infer(frame)[0]
        detections = sv.Detections.from_inference(result)

        # detection 되는 객체 중 멀리 떨어진 객체에 대한 detection 세밀화
        detections = detections[polygon_zone.trigger(detections)]

        # detection 에 Tracking 을 위한 ByteTrack 추가
        detections = byte_track.update_with_detections(detections=detections)

        # [view transform] 설정한 바운딩 박스 convert
        points = detections.get_anchors_coordinates(anchor=sv.Position.BOTTOM_CENTER)
        points = view_transformer.transform_points(points=points).astype(int)

        # view_transformer 통해 parse 한 실 거리 위에서 객체를 tracking 하여 실제 속도 측정
        # distance = abs(시작 지점 - 끝 지점)
        # time = 찍힌 Frame 수 / 촬영 스트림 fps
        # speed = distance / time * 3.6
        labels = []
        for tracker_id, [_, y] in zip(detections.tracker_id, points):
            coordinates[tracker_id].append(y)
            if len(coordinates[tracker_id]) < video_info.fps / 2:
                labels.append(f"#{tracker_id}")
            else:
                coordinate_start = coordinates[tracker_id][-1]
                coordinate_end = coordinates[tracker_id][0]
                distance = abs(coordinate_start - coordinate_end)
                time = len(coordinates[tracker_id]) / video_info.fps
                speed = distance / time * 3.6
                labels.append(f"#{tracker_id} {int(speed)} km/h")

        # # [view transform] 객체가 프레임 상에서 움직이는 x, y 좌표를 나타내는 label.
        # labels = [
        #     f"x: {x}, y: {y}"
        #     for [x, y]
        #     in points
        # ]

        # # annotated_frame 을 더욱 풍부하게 만들기 위해 labels 추가 - tracker_id 확인 용도
        # labels = [
        #     f"#{tracker_id}"
        #     for tracker_id
        #     in detections.tracker_id
        # ]

        # frame 을 카피해서 annotated frame 으로 재 할당 (aanotated_frame = 효과 주기)
        annotated_frame = frame.copy()

        # 멀리 떨어진 객체 인식 세밀화를 위한 polygon zone 을 annotated_frame 에 추가.
        annotated_frame = sv.draw_polygon(annotated_frame, polygon=SOURCE, color=sv.Color.RED)
        annotated_frame = bounding_box_annotator.annotate(
            scene=annotated_frame, detections=detections
        )
        annotated_frame = lable_annotator.annotate(
            scene=annotated_frame, detections=detections
        )
        # labels 로 생성한 tracker_id 추가
        annotated_frame = lable_annotator.annotate(
            scene=annotated_frame, detections=detections, labels=labels
        )

        cv2.imshow("annotated_frame", annotated_frame)
        if cv2.waitKey(1) == ord("q"):
            break

    cv2.destroyAllWindows()