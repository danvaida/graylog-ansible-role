FROM danvaida/ansible-docker-images:debian-jessie-slim

LABEL maintainer "me@danvaida.com"

RUN apt-get update -y \
    && apt-get install -y git='1:2.1.4-2.1+deb8u5'

COPY run-tests.sh run-tests.sh
