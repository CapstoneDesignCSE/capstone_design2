from pyfirmata2 import Arduino, util
import time

# 연결된 아두이노 포트 설정
port = '/dev/ttyUSB0'
board = Arduino(port)

# 필요한 핀 설정
button1 = board.get_pin('d:13:i')  # 버튼 1 핀, 디지털 핀 13
button2 = board.get_pin('d:12:i')  # 버튼 2 핀, 디지털 핀 12
potentiometer = board.get_pin('a:0:i')  # 포텐쇼미터 핀, 아날로그 핀 0
motor_enable = board.get_pin('d:5:o')  # 모터 활성화 핀, 디지털 핀 5
motor_speed = board.get_pin('d:9:p')  # 모터 속도 제어 핀, PWM 가능한 디지털 핀 9
motor_dir=board.get_pin('d:6:o')
# 보드를 반복적으로 체크하기 위한 이터레이터 시작
it = util.Iterator(board)
it.start()

# 모든 핀의 초기 상태 설정
motor_enable.write(False)

try:
    while True:
        # 버튼 1 상태 읽기
        button1_state = button1.read()
        if button1_state is True:
            # 버튼 2 상태 읽기
            button2_state = button2.read()
            # 포텐쇼미터 값 읽기
            pot_value = potentiometer.read()
            print(pot_value)
            if pot_value is not None:
                # 포텐쇼미터 값 매핑 [0, 1] -> [0, 100]
                speed = pot_value
                if button2_state is True:
                    motor_enable.write(True)
                    # 버튼 2가 눌린 경우
                    print('button2True')
                    motor_dir.write(True)
                    print(speed)
                    motor_speed.write(1.0)
                    motor_enable.write(False)
                    #motor_speed.write(int((speed*255-128)))  # PWM 신호는 0~1 사이
                else:
                    # 버튼 2가 눌리지 않은 경우
                    motor_enable.write(True)
                    print('button2False')
                    motor_dir.write(False)
                    print(speed)
                    motor_speed.write(0.1)
                    motor_enable.write(False)
                    #motor_speed.write(int((speed*255-128)))  # 음수는 역방향을 의미할 수 있음
                # 모터 활성화
                #motor_enable.write(True)
        else:
            # 버튼 1이 눌리지 않은 경우, 모터 비활성화
            motor_enable.write(True)
            motor_speed.write(0)
            motor_enable.write(False)
            print('off')

        # 100ms 지연
        time.sleep(2)

except KeyboardInterrupt:
    # 프로그램 종료 전 정리 작업
    board.exit()
