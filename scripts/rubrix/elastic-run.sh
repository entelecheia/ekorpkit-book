#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

docker run -d --rm \
	-p 9200:9200 \
	-p 9300:9300 \
	-e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
	-e "discovery.type=single-node" \
  	--volume $RUBRIX_HOST_DATA_DIR:$RUBRIX_DOCKER_DATA_DIR \
	--name $RUBRIX_ELASTIC_DOCKER_CONTAINER_NAME \
	docker.elastic.co/elasticsearch/elasticsearch-oss:7.10.2

  	# --volume $RUBRIX_HOST_CERTS_DIR:$RUBRIX_DOCKER_CERTS_DIR \
  	# --volume $RUBRIX_HOST_DATA_DIR:$RUBRIX_DOCKER_DATA_DIR \


