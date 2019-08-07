FROM python:3-alpine

WORKDIR /usr/src/flask_uuid

COPY . .
RUN apk update && apk upgrade
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python","app.py"]