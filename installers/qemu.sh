#!/bin/bash

set -ex

git clone https://github.com/qemu/qemu
cd qemu/
git checkout v6.1.0
mkdir build
cd build/

sudo apt install -y \
    ninja-build \
    libglib2.0-dev \
    libpixman-1-dev \

../configure --target-list=riscv64-softmmu --prefix=$HOME/.local/qemu
make -j6
make install
