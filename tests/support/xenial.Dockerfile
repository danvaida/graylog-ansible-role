FROM ubuntu:xenial

RUN apt-get -y update
RUN apt-get -y install ca-certificates \
                       git \
                       gcc \
                       openssh-client \
                       openssl \
                       python-pip \
                       python-dev \
                       libffi-dev \
                       libssl-dev \
                       systemd
RUN pip install setuptools \
                ansible

COPY run-tests.sh run-tests.sh
