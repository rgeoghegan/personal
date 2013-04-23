#!/usr/bin/env bash

here=$PWD
for filename in bashrc gitconfig gvimrc hgrc inputrc screenrc vim vimrc
do
    ln -s $here/$filename ~/.$filename
done
