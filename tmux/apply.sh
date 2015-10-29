#!/bin/sh

if [ -f ~/.tmux.conf ]; then
    cp ~/.tmux.conf ~/tmux.conf.back
fi

dir=$(dirname $0)

cp $dir/tmux.conf ~/.tmux.conf
