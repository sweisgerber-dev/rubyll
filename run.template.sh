#!/usr/bin/env bash
HOSTNAME="rubyll"
HOST_PATH_1="/PATH/TO/project"
DOCKER_PATH_1="/workspace/project"

docker run -ti \
    --hostname ${HOSTNAME} \
    --volume ${HOST_PATH_1}:${DOCKER_PATH_1} \
    rubyll:latest /bin/bash
