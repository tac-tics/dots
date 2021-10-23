#!/bin/bash

# bash
mkdir -p $HOME/.bash
mkdir -p $HOME/.bash/completion.d
cp -r bash/* $HOME/.bash/
cp bashrc $HOME/.bashrc
cp profile $HOME/.profile

# vim
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/bundle
mkdir -p $HOME/.vim/undo
chmod og-rwx $HOME/.vim/undo
cp -r vim/* $HOME/.vim/

if [ ! -f "$HOME/.vim/local.vim" ]
then
    cp "vim/local.vim.tpl" "$HOME/.vim/local.vim"
fi


# git
cp gitconfig $HOME/.gitconfig

# command line completion
cp inputrc $HOME/.inputrc

cp tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.config
cp -r config/* $HOME/.config

mkdir -p $HOME/.docker
cp -r docker/* $HOME/.docker

mkdir -p $HOME/.ipython
cp -r ipython/* $HOME/.ipython

mkdir -p $HOME/.local
cp -r local/* $HOME/.local

xmodmap $HOME/.Xmodmap
