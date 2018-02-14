#!/usr/bin/env bash

# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
    echo 'Attempting to install oh-my-zsh (no message on success)'
    if hash curl 2>/dev/null; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    elif hash wget 2>/dev/null; then
        sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    else
        echo 'Could not install oh-my-zsh.'
    fi
else
    sh $OMZDIR/tools/upgrade.sh
fi

# Change default shell
if [ ! $SHELL = "/usr/bin/zsh" ]; then
    echo 'Changing default shell to zsh'
    chsh -s /usr/bin/zsh
else
    echo 'Already using zsh'
fi

