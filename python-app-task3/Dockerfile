# Python 3.8 tabanlı resmi Docker görüntüsünü kullan
FROM python:3.8.18-slim

# Docker içinde çalıştırılacak Python dosyasını kopyala
COPY main.py /app/main.py

# Uygulama dizini olarak /app'i ayarla
WORKDIR /app

# Gerekli Python paketlerini kur
RUN pip install numpy

# Docker konteyneri çalıştığında çalıştırılacak komut
CMD ["python", "main.py"]
