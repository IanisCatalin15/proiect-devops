FROM python:3.10-slim
WORKDIR /app
COPY app.py .
CMD ["python3", "-m", "http.server", "8080"]