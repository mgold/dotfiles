#!/bin/bash

rm -f ~/.vimrc
rm -rf ~/.vim
ln -s dotfiles/.vim ~/.vim
ln -s dotfiles/.vim/.vimrc ~/.vimrc

source .aliases
