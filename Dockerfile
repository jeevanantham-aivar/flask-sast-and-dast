# FROM python:3.12-slim
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install -r requirements.txt
# COPY . .
# EXPOSE 5000
# CMD ["python", "app.py"]


# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ ./app

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "app/app.py"]
