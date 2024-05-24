import socket

class MotorClient:

    def __init__(self):
        # 서버의 IP 주소와 포트 번호
        self.server_ip = '222.233.80.39'
        self.server_port = 12345

        # 소켓 설정
        self.client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.client_socket.connect((self.server_ip, self.server_port))

    def send_data_to_motor(self, speed, car_type):
        # 전송할 데이터 형식: "속도,차량 유형"
        data = f"{speed},{car_type}"

        # 데이터 전송
        self.client_socket.sendall(data.encode())

        # 소켓 닫기
        self.client_socket.close()
