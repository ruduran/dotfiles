#!/bin/sh

usage () {
    echo "Usage: $0 <fullname> <email>"
}

if [ $# -ne 2 ]; then
    usage
    exit 0
fi

if [ -f ~/.gitconfig ]; then
    cp ~/.gitconfig ~/.gitconfig.back
fi

dir=$(dirname $0)

sed -e "s/%FULLNAME%/$1/" -e "s/%EMAIL%/$2/" -e "s|%HOME%|$HOME|" $dir/gitconfig > ~/.gitconfig
