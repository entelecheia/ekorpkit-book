#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

EXTRA=${1:-$EKORPKIT_PIP_EXTRA}

pip install -e $EKORPKIT_SRC_DIR$EXTRA
