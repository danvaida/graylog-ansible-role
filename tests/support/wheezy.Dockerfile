FROM danvaida/ansible-docker-images:debian-wheezy-slim

LABEL maintainer "me@danvaida.com"

RUN apt-get update -y \
    && apt-get install -y git='1:1.7.10.4-1+wheezy6'

COPY run-tests.sh run-tests.sh
