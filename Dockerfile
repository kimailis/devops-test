FROM python:3.9

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV PORT=6969

EXPOSE $PORT

ARG CONTAINER_NAME=devpyapp

ENV CONTAINER_NAME=$CONTAINER_NAME

CMD ["python3", "app.py"]


