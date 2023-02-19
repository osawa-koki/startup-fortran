FROM ubuntu:latest
RUN apt update && \
    apt install gfortran make -y
WORKDIR /app
