#!/usr/bin/env bash
HOSTNAME="rubyll"
HOST_PATH_1="/PATH/TO/aosp-7.1"
DOCKER_PATH_1="/aosp/aosp-7.1"

docker run -ti \
    --hostname ${HOSTNAME} \
    --volume ${HOST_PATH_1}:${DOCKER_PATH_1} \
    rubyll:latest
