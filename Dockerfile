# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ARG SETUP_FILE=.setupMac
WORKDIR /PerpetualProjectSetup
COPY . .
RUN apt update
RUN apt install -y curl
RUN chmod +x ${SETUP_FILE} 
RUN ./${SETUP_FILE}
RUN colorscript random 
CMD echo "Perpetual Project Successfully Deployed on Docker with status" + $?