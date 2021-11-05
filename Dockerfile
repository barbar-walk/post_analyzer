FROM python:3.8-alpine

WORKDIR /app

ADD requirements.txt .

RUN apk add --no-cache build-base mariadb-connector-c-dev
RUN pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

ADD main.py .
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]