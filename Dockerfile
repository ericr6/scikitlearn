FROM python:3.9-slim

# Set environment variables at the Docker level
ENV MKL_NUM_THREADS=1
ENV OMP_NUM_THREADS=1
ENV OPENBLAS_NUM_THREADS=1
ENV NUMEXPR_NUM_THREADS=1
ENV PYTHONUNBUFFERED=1
# Add this to prevent threading issues
ENV PYTHONFAULTHANDLER=1

RUN pip3 install matplotlib scikit-learn

COPY ./src /app
ENTRYPOINT ["python3", "/app/app.py"]