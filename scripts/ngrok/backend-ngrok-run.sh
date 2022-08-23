#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d -p $EKORPKIT_BACKEND_NGROK_PORT \
	--env NGROK_AUTH=$EKORPKIT_BACKEND_NGROK_AUTH_TOKEN \
	--env NGROK_PORT=http://$JUPYTER_HOST_IP:$EKORPKIT_BACKEND_HOST_PORT \
	--net $EKORPKIT_APP_DOCKER_NETWORK \
	--name $EKORPKIT_BACKEND_NGROK_CONTAINER_NAME \
	wernight/ngrok:latest
