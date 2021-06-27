FROM lzzy12/mega-sdk-python:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update ; apt-get install git
RUN echo y | apt-get install locales
RUN pip3 install setuptools wheel

RUN git clone https://github.com/odysseusmax/tg-index

RUN cp -R tg-index/* /usr/src/app
