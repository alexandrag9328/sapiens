# syntax=docker/dockerfile:1
FROM ubuntu:20.04

RUN apt update && apt install -y nginx

RUN mkdir /app
WORKDIR /app
COPY alexandra-cea-mai-super /var/www/html

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80