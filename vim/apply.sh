#!/bin/sh

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.back
fi

cp vimrc ~/.vimrc
