#!/bin/bash
set -x
set -o allexport
source .env
set +o allexport

cd $HOME/.cache
ln -s $HF_HOME huggingface
