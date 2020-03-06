FROM docker:19
LABEL MAINTAINER="Artyom Nosov <chip@unixstyle.ru>"

ARG DOCKER_COMPOSE_VERSION=1.25.4

RUN apk add --no-cache \
      bash \
      gcc \
      libffi-dev \
      make \
      musl-dev \
      openssl-dev \
      py-pip \
      python2-dev \
 && pip install --no-cache-dir \
      docker-compose==$DOCKER_COMPOSE_VERSION
