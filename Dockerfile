FROM python:3.8.3
MAINTAINER Gutar "<admin@escolasoft.com>"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install -y jq git \
	&& apt-get clean \
	&& pip install awscli \
