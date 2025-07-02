FROM python:3.12

WORKDIR /app

COPY . .

# Install libGL agar OpenCV bisa jalan
RUN apt-get update && apt-get install -y ffmpeg libgl1

RUN pip install --no-cache-dir -r requirements.txt

CMD ["sh", "-c", "gunicorn app:app --bind 0.0.0.0:$PORT"]
