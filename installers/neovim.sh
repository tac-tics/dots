#!/bin/bash

set -ex

neovim_dir="$PROJECTS/neovim"
neovim_commit="v0.5.0"
skip_fetch=1
prefix="$HOME/.local/neovim"

if [ ! -d $neovim_dir ]
then
    git clone https://github.com/neovim/neovim.git $neovim_dir
else
    echo "$neovim_dir already exists, skipping cloning..."
fi

cd $neovim_dir

if [[ "$skip_fetch" == "1" ]]
then
    echo "Skipping fetch..."
else
    git fetch
fi

git checkout $neovim_commit

# make clean
if [ ! -d build/ ]
then
    mkdir build/
fi

make deps
cd build/
pwd
cmake \
    -DCMAKE_INSTALL_PREFIX="$prefix" \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    ..

make
make install

mkdir -p "$HOME/.vim/autoload"
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

$HOME/.local/neovim/bin/nvim --headless +PlugInstall +qall
