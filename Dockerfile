# 1. 베이스 이미지 설정 (Python 3.8 사용)
FROM python:3.8-slim

# 2. 작업 디렉토리 설정
WORKDIR /usr/src/app

# 3. 필요한 패키지 설치
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# 4. 애플리케이션 코드 복사
COPY app.py .

# 5. 애플리케이션 실행
CMD ["python", "./app.py"]
