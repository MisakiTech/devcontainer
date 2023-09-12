FROM python:3.10-buster
# FROM python:3.10-slim #no tenia git
# FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get -y install git
# RUN apk add gpg
COPY . .