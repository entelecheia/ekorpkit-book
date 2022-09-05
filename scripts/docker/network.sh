#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker network create -d bridge $EKORPKIT_DOCKER_NETWORK_NAME
