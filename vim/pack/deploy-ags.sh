#!/usr/bin/env bash

URL=https://github.com/gabesoft/vim-ags.git
DEST=ags/start/vim-ags

mkdir -p $DEST && \
git clone $URL $DEST
