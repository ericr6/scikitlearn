FROM python:3.9-slim

RUN pip3 install matplotlib scikit-learn

COPY ./src /app
ENTRYPOINT ["python3", "/app/app.py"]