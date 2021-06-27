FROM python:3

WORKDIR /usr/src/app

RUN apt update ; apt install git -y

RUN cp -R tg-index/* /usr/src/app
