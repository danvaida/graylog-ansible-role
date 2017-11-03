FROM danvaida/ansible-docker-images:debian-stretch-slim

LABEL maintainer "me@danvaida.com"

RUN apt-get update -y \
    && apt-get install -y git='1:2.11.0-3+deb9u2'

COPY run-tests.sh run-tests.sh
