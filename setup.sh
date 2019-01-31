#!/bin/bash

# bash
mkdir -p $HOME/.bash
mkdir -p $HOME/.bash/completion.d
cp -r bash/* $HOME/.bash/
cp bashrc $HOME/.bashrc

# vim
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/undo
mkdir -p $HOME/.vim/nerdtree_plugin
chmod og-rwx $HOME/.vim/undo
cp -r vim/* $HOME/.vim/
cp -r vim/nerdtree_plugin/* $HOME/.vim/nerdtree_plugin/

# git
cp gitconfig $HOME/.gitconfig

# command line completion
cp inputrc $HOME/.inputrc

cp tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.config
cp -r config/* $HOME/.config

mkdir -p $HOME/.docker
cp -r docker/* $HOME/.docker
