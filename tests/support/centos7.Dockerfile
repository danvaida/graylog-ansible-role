FROM danvaida/ansible-docker-images:centos-7

LABEL maintainer "me@danvaida.com"

RUN yum install -y git-1.8.3.1-12.el7_4

COPY run-tests.sh run-tests.sh
