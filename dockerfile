FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt requirements.txt

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget 


RUN pip install -U "pip < 22" setuptools wheel && pip install -Ur requirements.txt
# RUN pip install -r requirements.txt






