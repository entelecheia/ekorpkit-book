#!/bin/sh

bash ./scripts/zsh/zsh-install.sh \
    -d nodep \
    -z .tmp \
    -t https://github.com/denysdovhan/spaceship-prompt \
    -p git \
    -p git-prompt \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions
