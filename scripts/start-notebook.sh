#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

mkdir -p $JUPYTER_LOG_DIR
DATESTAMP=$(date +'%y%m%d%H%M%S')
LOGFILE=$JUPYTER_LOG_DIR/.jupyter-$DATESTAMP.log
printf "Logs written to %s\n" "$LOGFILE"

nohup jupyter lab --no-browser -NotebookApp.token=$JUPYTER_TOKEN --port=$JUPYTER_PORT --ip=0.0.0.0 --allow-root >$LOGFILE &
