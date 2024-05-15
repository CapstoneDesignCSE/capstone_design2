import boto3
from botocore.exceptions import NoCredentialsError

# AWS 자격 증명 및 S3 클라이언트 설정
ACCESS_KEY = 'your-access-key'
SECRET_KEY = 'your-secret-key'
BUCKET_NAME = 'inu-capstone-design2'
s3 = boto3.client('s3', aws_access_key_id=ACCESS_KEY, aws_secret_access_key=SECRET_KEY)

def upload_to_aws(local_file, s3_file):
    try:
        s3.upload_file(local_file, BUCKET_NAME, s3_file)
        print("Upload Successful")
        return True
    except FileNotFoundError:
        print("The file was not found")
        return False
    except NoCredentialsError:
        print("Credentials not available")
        return False

# # 이미지를 S3에 업로드
# local_image_path = 'path/to/your/local/image.jpg'  # 로컬 이미지 파일 경로
# s3_image_path = 'path/in/s3/image.jpg'  # S3에 저장될 이미지 파일 경로
#
# upload_to_aws(local_image_path, BUCKET_NAME, s3_image_path)
