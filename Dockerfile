FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app
#  -D means for running applications only
RUN adduser -D user
USER user