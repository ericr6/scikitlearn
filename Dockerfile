FROM python:3.9-slim
RUN pip3 install matplotlib
RUN pip3 install scikit-learn

### install python dependencies if you have some
COPY ./src /app
ENTRYPOINT ["python3", "/app/app.py"]