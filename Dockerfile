FROM python:3.9
WORKDIR /app/gke-app
COPY . /app/gke-app
RUN pip install -r gke-app/requirements.txt
CMD ["gunicorn", "-b", "0.0.0.0:80", "app:app"]
