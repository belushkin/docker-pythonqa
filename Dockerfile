FROM gliderlabs/alpine:3.3

MAINTAINER David Barbarisi <davidbarbarisi@gmail.com>

RUN apk-install python py-pip && \
    pip install --upgrade pip

COPY requirements.txt /

RUN pip install -r /requirements.txt

RUN mkdir /code
WORKDIR /code

CMD flake8 .
