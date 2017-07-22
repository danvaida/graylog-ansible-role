FROM danvaida/ansible-docker-images:centos-7

LABEL maintainer "me@danvaida.com"

RUN yum install -y git-1.8.3.1-6.el7_2.1

COPY run-tests.sh run-tests.sh
