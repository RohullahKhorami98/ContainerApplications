FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get -y upgrade

RUN apt-get install -y python3-pip

RUN apt-get install -y can-utils

RUN apt-get install -y net-tools

CMD [ "/bin/bash" ]