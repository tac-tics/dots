#!/bin/bash

# bash
mkdir -p $HOME/.bash
cp -r bash/* $HOME/.bash/
cp bashrc $HOME/.bashrc

# vim
mkdir -p $HOME/.vim
cp -r vim/* $HOME/.vim/
cp vimrc $HOME/.vimrc

# git
cp gitconfig $HOME/.gitconfig

# command line completion
cp inputrc $HOME/.inputrc

cp tmux.conf $HOME/.tmux.conf
