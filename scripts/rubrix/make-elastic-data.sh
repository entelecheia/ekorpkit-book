#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

if [ -d $RUBRIX_ELASTIC_WORKSPACE_DATA_DIR ]; then
	echo "Data directory already exists. Skipping..."
else
	echo "Creating data directory..."
	mkdir -p $RUBRIX_ELASTIC_WORKSPACE_DATA_DIR
fi
chmod g+rwx $RUBRIX_ELASTIC_WORKSPACE_DATA_DIR
chgrp 0 $RUBRIX_ELASTIC_WORKSPACE_DATA_DIR