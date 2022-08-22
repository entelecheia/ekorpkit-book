#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker push $JUPYTERHUB_IMAGE_NAME
