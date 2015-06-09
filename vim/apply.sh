#!/bin/sh

echo "This configuration requires Vundle: https://github.com/gmarik/Vundle.vim"

if [ -f ~/.vimrc ]; then
    cp ~/.vimrc ~/.vimrc.back
fi

dir=$(dirname $0)

cp $dir/vimrc ~/.vimrc

echo "You should now run 'vim +PluginInstall +qall' to install the plugin(s)."
