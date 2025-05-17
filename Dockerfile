FROM python:3.10-slim-bullseye

WORKDIR /app

COPY requirements.txt .

# Upgrade pip and install dependencies with thread-safe progress off
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --progress-bar=off -r requirements.txt

COPY . .

EXPOSE 8000

# Use the correct app instance name from your Python file
CMD ["uvicorn", "main:art_llm", "--host", "0.0.0.0", "--port", "8000", "--workers", "1"]