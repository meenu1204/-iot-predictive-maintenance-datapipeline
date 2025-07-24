# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY ./src /app/src
COPY ./data /app/data
COPY ./requirements.txt /app/requirements.txt
COPY ./.env /app/.env

# Add PYTHONPATH
ENV PYTHONPATH=/app

# Install dependencies
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Run ETL pipeline
CMD ["python", "src/main/main.py"]

