# Makefile for the Docker image proxy-to-service
# MAINTAINER: Tim Hockin <thockin@google.com>
# If you update this image please bump the tag value before pushing.

.PHONY: all container push

TAG = v4.0
PREFIX = zlxceav02utl.kgm1.cci.att.com:5000
NAME = proxy-to-service

all: container

container:
	docker build --pull -t $(PREFIX)/$(NAME):$(TAG) .

push:
	docker push $(PREFIX)/$(NAME):$(TAG)
	docker push $(PREFIX)/$(NAME):latest
	docker pull $(PREFIX)/$(NAME):latest
