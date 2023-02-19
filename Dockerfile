FROM ubuntu:latest

RUN apt update && \
    apt install gfortran -y

WORKDIR /app
