from CarDetection import CarDetectionByCam
from CarDetection import CarDetectionByVideo

if __name__ == '__main__':
    detection = None

    while True:
        selection = int(input("Enter the number: [1] - Car Detection By Camera, [2] - Car Detection By Video"))

        if selection == 1:
            CarDetectionByCam.CarDetectionByCam()
            break
        elif selection == 2:
            CarDetectionByVideo.CarDetectionByVideo()
            break
        else:
            print(f"[ERROR] Invalid Selection: {selection}")