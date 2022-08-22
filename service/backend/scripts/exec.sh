#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

CMD=${1:-/bin/bash}

docker exec -it $EKORPKIT_BACKEND_DOCKER_CONTAINER_NAME $CMD
