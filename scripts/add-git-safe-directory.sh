#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

git config --global --add safe.directory $PWD
git config --global --add safe.directory $EKORPKIT_SRC_DIR
