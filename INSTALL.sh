#!/bin/sh

if type git rcup; then
    git clone --branch master --single-branch --depth 1 --recursive https://github.com/manicmaniac/dotfiles
    env RCRC=dotfiles/rcrc rcup
else
    echo 'Dependencies unsatisfied. read "https://raw.githubusercontent.com/manicmaniac/dotfiles/master/README.md#install".' >&2
    exit 1
fi

