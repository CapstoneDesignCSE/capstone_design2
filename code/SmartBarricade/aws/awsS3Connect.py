import boto3
from botocore.exceptions import NoCredentialsError
import yaml

# YAML 파일 읽기
with open("secret.yaml", 'r') as file:
    config = yaml.safe_load(file)

# AWS 자격 증명 및 S3 클라이언트 설정
ACCESS_KEY = config['aws']['ACCESS_KEY']
SECRET_KEY = config['aws']['SECRET_KEY']
BUCKET_NAME = config['aws']['BUCKET_NAME']
s3 = boto3.client('s3', aws_access_key_id=ACCESS_KEY, aws_secret_access_key=SECRET_KEY)

def upload_to_aws(local_file, s3_file):
    try:
        s3.upload_file(local_file, BUCKET_NAME, s3_file, ExtraArgs={'ContentType': 'image/jpg'})
        print("Upload Successful")

        # 업로드된 객체의 실제 URL 생성
        object_url = f"https://{BUCKET_NAME}.s3.amazonaws.com/{s3_file}"
        print("Object URL:", object_url)

        return object_url
    except FileNotFoundError:
        print("The file was not found")
        return False
    except NoCredentialsError:
        print("Credentials not available")
        return False
