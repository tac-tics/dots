#!/bin/bash

set -e

function link() {
    src=$1
    dst=$2
    if [ ! -e "$dst" ]; then
        ln -s "$src" "$dst"
    fi
}

STATIC=$(realpath 'static')

# bash
mkdir -p $HOME/.bash
link $STATIC/bash/* $HOME/.bash/
cp $STATIC/bashrc $HOME/.bashrc
cp $STATIC/profile $HOME/.profile

# git
link $STATIC/gitconfig $HOME/.gitconfig
link $STATIC/gitignore $HOME/.gitignore

# command line completion
link $STATIC/inputrc $HOME/.inputrc

link $STATIC/tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.config
for f in $(ls -1 $STATIC/config); do
    link "$STATIC/config/$f" "$HOME/.config/$f"
done

mkdir -p $HOME/.docker
link $STATIC/docker/* $HOME/.docker

mkdir -p $HOME/.ipython
link $STATIC/ipython/* $HOME/.ipython
