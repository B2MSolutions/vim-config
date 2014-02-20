#!/bin/bash


# prepare the default dir
mkdir -p ~/.vim/bundle

# link ./vimrc into ~, taking care to backup an existing configuration
mv ~/.vimrc ~/.vimrc-before-b2m 2>/dev/null
ln -s $PWD/vimrc ~/.vim/vimrc
ln -s $PWD/colors ~/.vim/colors

# install the plugin manager
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

vim

