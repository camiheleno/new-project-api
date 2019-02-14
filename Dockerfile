FROM python:3.6

MAINTAINER Camilla Heleno "camiheleno@gmail.com"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /app
WORKDIR /app

ADD ./src /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
