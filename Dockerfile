# Use a base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY src/ /app/

# Install dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]