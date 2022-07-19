#!/bin/bash

set -e

STATIC='static'

# bash
mkdir -p $HOME/.bash
mkdir -p $HOME/.bash/completion.d
cp -r $STATIC/bash/* $HOME/.bash/
cp $STATIC/bashrc $HOME/.bashrc
cp $STATIC/profile $HOME/.profile

# vim
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/bundle
mkdir -p $HOME/.vim/undo
chmod og-rwx $HOME/.vim/undo
cp -r $STATIC/vim/* $HOME/.vim/

if [ ! -f "$HOME/.vim/local.vim" ]
then
    cp $STATIC/"vim/local.vim.tpl" "$HOME/.vim/local.vim"
fi

# git
cp $STATIC/gitconfig $HOME/.gitconfig
cp $STATIC/gitignore $HOME/.gitignore

# command line completion
cp $STATIC/inputrc $HOME/.inputrc

cp $STATIC/tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.config
cp -r $STATIC/config/* $HOME/.config

mkdir -p $HOME/.docker
cp -r $STATIC/docker/* $HOME/.docker

mkdir -p $HOME/.ipython
cp -r $STATIC/ipython/* $HOME/.ipython

mkdir -p $HOME/.local
cp -r $STATIC/local/* $HOME/.local
