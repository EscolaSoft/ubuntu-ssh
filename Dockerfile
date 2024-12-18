FROM ubuntu:latest
MAINTAINER Gutar "<admin@escolasoft.com>"
ENV DEBIAN_FRONTEND=noninteractive

# Install ssh
RUN apt-get update -y && apt-get install -y \
  curl \
  ca-certificates \
  git-core \
  gzip \
  openssh-client \
  unzip \
  zip \
  --no-install-recommends && \
  apt-get autoremove -y && \
  update-ca-certificates && \
  rm -rf /var/lib/apt/lists/*
