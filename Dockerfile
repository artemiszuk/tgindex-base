FROM ubuntu:20.04
WORKDIR /usr/src/app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update ; apt-get install -y git python3 python3-pip build-essential
RUN echo y | apt-get install locales
RUN pip3 install setuptools wheel

RUN git clone https://github.com/odysseusmax/tg-index

RUN cp -R tg-index/* /usr/src/app
