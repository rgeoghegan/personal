#!/usr/bin/env bash

here=$PWD
for filename in bashrc gitconfig gvimrc hgrc inputrc screenrc vim vimrc
do
    ln -s $here/$filename ~/.$filename
done

vim_plugins="$here/vim/pack/plugins/start"
packages="$here/vim_packages.txt"
while read pack_url; do
    pack="$(basename "$pack_url")"
    fullpath="$vim_plugins/$pack"
    if test ! -d "$fullpath"; then
        git clone "$pack_url" $fullpath
    fi
    cd $fullpath
    git pull
done <$packages
