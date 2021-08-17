FROM python:3.8.3
MAINTAINER Gutar "<admin@escolasoft.com>"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y jq git \
    && apt-get clean \
    && pip install awscli

RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

RUN  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable"  |tee /etc/apt/sources.list.d/docker.list

RUN apt-get update \
    && apt-get install -y docker-ce \
    docker-ce-cli \
    containerd.io \
    && apt-get clean
