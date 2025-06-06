FROM python:3.8-slim
WORKDIR /app
COPY ./api /app
RUN pip install -r requirements.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
