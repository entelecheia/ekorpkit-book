#!/bin/bash

service ssh start

# copy public key to authorized_keys
# mkdir -p ~/.ssh
# vi ~/.ssh/authorized_keys

# Step 1 - Creating SSH Keys
# ssh-keygen
# Step 2 — Copying an SSH Public Key to Your Server
# ssh-copy-id username@remote_host
# or
# cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"

# check config file
# cat /etc/ssh/sshd_config
