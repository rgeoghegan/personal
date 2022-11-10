#!/usr/bin/env bash

URL=https://github.com/nvie/vim-flake8.git
DEST=flake8/start/vim-flake8

mkdir -p $DEST && \
git clone $URL $DEST
