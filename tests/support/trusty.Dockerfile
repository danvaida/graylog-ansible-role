FROM ubuntu:trusty

RUN apt-get -y update
RUN apt-get -y install ca-certificates \
                       git \
                       gcc \
                       openssh-client \
                       openssl \
                       python-dev \
                       libffi-dev \
                       libssl-dev \
                       wget
RUN wget https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && rm get-pip.py \
    && pip install \
        setuptools \
        ansible==2.3

COPY run-tests.sh run-tests.sh
