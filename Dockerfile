# 베이스 이미지로 Python 사용
FROM python:3.9-slim

# 작업 디렉터리 설정
WORKDIR /home/vagrant/test/

# 종속성 설치를 위해 requirements.txt 복사
COPY requirements.txt requirements.txt

# 필요한 Python 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY . .

# Django 서버 실행 명령어
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
