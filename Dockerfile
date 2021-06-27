FROM python:3

WORKDIR /usr/src/app

RUN git clone https://github.com/odysseusmax/tg-index

RUN cp -R tg-index/* /usr/src/app
