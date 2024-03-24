FROM python:3.7

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 6969

ARG CONTAINER_NAME=devpyapp

ENV CONTAINER_NAME=$CONTAINER_NAME

CMD ["python3", "app.py", "ma.py", "db.py"]


