#!/bin/bash

set -e

STATIC='static'

# bash
mkdir -p $HOME/.bash
mkdir -p $HOME/.bash/completion.d
cp -r $STATIC/bash/* $HOME/.bash/
cp $STATIC/bashrc $HOME/.bashrc
cp $STATIC/profile $HOME/.profile

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

# podman
mkdir -p $HOME/.config/containers
cp -r $STATIC/config/containers/* $HOME/.config/containers

mkdir -p $HOME/.ipython
cp -r $STATIC/ipython/* $HOME/.ipython

mkdir -p $HOME/.local
cp -r $STATIC/local/* $HOME/.local

if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]
then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
fi
