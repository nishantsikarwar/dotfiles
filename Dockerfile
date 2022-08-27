# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ARG SETUP_FILE=.setupMac
WORKDIR /PerpetualProjectSetup
COPY . .
RUN apt-get update
RUN chmod +x ${SETUP_FILE} 
RUN ./${SETUP_FILE}
RUN colorscript random 
CMD echo "Perpetual Project Successfully Deployed on Docker with status" + $?