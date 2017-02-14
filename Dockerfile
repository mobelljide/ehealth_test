FROM ubuntu:latest
MAINTAINER Mobell Jide <mobelljide@gmail.com>

RUN apt-get update

RUN apt-get install -y python-dev python-pip curl couchdb git 


RUN mkdir -p /build/

ADD requirements.txt /build/
RUN pip install  -r /build/requirements.txt

RUN git clone  https://github.com/mobelljide/ehealth_test.git  /build

