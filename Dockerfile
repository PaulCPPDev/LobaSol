# Use an official Python image
FROM python:3.11-slim

# Set your app folder
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your code
COPY . .

ENV PORT=8080

EXPOSE 8080

# Run your app
#CMD ["python", "app/main.py"]
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]