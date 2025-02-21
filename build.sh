#!/bin/sh

cd docker
# docker build -t mmlw-rrl-st .
docker build --build-arg HTTP_PROXY=127.0.0.1:8080 --build-arg HTTPS_PROXY=127.0.0.1:8080 -t str2vec .
