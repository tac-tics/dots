#!/bin/bash

# bash
mkdir -p $HOME/.bash
cp -r bash/* $HOME/.bash/
cp bashrc $HOME/.bashrc

# vim
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/undo
chmod og-rwx $HOME/.vim/undo
cp -r vim/* $HOME/.vim/

# git
cp gitconfig $HOME/.gitconfig

# command line completion
cp inputrc $HOME/.inputrc

cp tmux.conf $HOME/.tmux.conf

cp -r config/* $HOME/.config
