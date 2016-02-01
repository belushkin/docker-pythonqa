FROM alpine:3.3

MAINTAINER David Barbarisi <davidbarbarisi@gmail.com>

RUN apk update && apk add \
  python \
  py-pip \
  && rm -rf /var/cache/apk/*

COPY requirements.txt /

RUN pip install -r /requirements.txt

RUN mkdir /code
WORKDIR /code

CMD flake8 .
