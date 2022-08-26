# syntax=docker/dockerfile:1
FROM ubuntu:22.04
WORKDIR /PerpetualProject
COPY . .
RUN apt-get update 
CMD echo "Perpetual Project Successfully Deployed on Docker with status" + $?
 
