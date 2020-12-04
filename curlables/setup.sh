#!/bin/bash

set -ex

apt update
apt install -y \
    build-essential \
    cmake \
    libtool-bin \
    pkg-config \
    unzip \
    git \
    gettext

mkdir projects -p
export PROJECTS=$(realpath projects)
cd projects

if [ ! -d dots ]
then
    git clone https://github.com/tac-tics/dots.git
fi

cd dots
bash setup.sh
bash build_neovim.sh

mkdir -p "$HOME/.vim/autoload"
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$HOME/.local/neovim/bin/nvim --headless +PlugInstall +qall
