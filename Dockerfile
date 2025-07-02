# Gunakan image Python resmi
FROM python:3.12

# Buat folder kerja
WORKDIR /app

# Copy semua file ke folder kerja
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan Gunicorn server
CMD ["sh", "-c", "gunicorn app:app --bind 0.0.0.0:$PORT"]
