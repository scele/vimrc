#!/usr/bin/env bash

git submodule init
git submodule update
ln -s ../bundle/pathogen/autoload/pathogen.vim autoload/pathogen.vim
ln -s .vim/vimrc ~/.vimrc
ln -s .vim/gvimrc ~/.gvimrc
ln -s .vim/gitconfig ~/.gitconfig
