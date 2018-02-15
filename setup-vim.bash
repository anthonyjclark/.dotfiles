#!/usr/bin/env bash

# Check if vimrc is installed
VIMDIR="$HOME/.vim_runtime"
if [ ! -d "$VIMDIR" ]; then
    echo 'Attempting to install vimrc (no message on success)'
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh, Installing amix/vimrc
fi

