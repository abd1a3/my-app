FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN python pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8084
CMD ["python", "app.py"]
