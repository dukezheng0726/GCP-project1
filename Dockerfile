# FROM python:3.9
# WORKDIR /app
# COPY . /app
# RUN pip install -r requirements.txt
# CMD ["gunicorn", "-b", "0.0.0.0:80", "app:app"]


# Use a base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application files
COPY app.py /app/
COPY requirements.txt /app/

# Install dependencies
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 80

# Command to run the application
CMD ["python", "app.py"]