#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

pip install "rubrix[server]==0.17.0"
