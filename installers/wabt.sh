#!/bin/bash

set -ex

cd $HOME/projects
if [ -d "$HOME/projects/wabt" ]; then
    cd wabt
    git fetch
else 
    git clone --recursive https://github.com/WebAssembly/wabt
    cd wabt
fi
git checkout 1.0.37
mkdir -p build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$HOME/.local/wabt ..
make -j $(nproc)
make install
