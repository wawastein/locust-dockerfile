FROM python:3.6-alpine

MAINTAINER oleksii.donoha@gmail.com

RUN apk add build-base --update && pip install locustio==0.8.1 && rm -rf /var/cache/apk/*

EXPOSE 8089
EXPOSE 5557
EXPOSE 5558

ENTRYPOINT ["locust"]
