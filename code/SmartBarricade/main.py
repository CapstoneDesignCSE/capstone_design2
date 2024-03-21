from CarDetection import CarDetectionByCam
from CarDetection import CarDetectionByVideo

if __name__ == '__main__':
    selection = int(input("Enter the number: [1] - Car Detection By Camera, [2] - Car Detection By Video"))
    if selection == 1:
        CarDetectionByCam.CarDetectionByCam()
    elif selection == 2:
        CarDetectionByVideo.CarDetectionByVideo()
    else:
        print(f"[ERROR] Invalid Selection: {selection}")