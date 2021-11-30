#!/bin/bash

# https://wiki.osdev.org/GCC_Cross-Compiler
set -xe

HEAD=binutils-2_37
#TARGET=riscv32-unknown-linux
TARGET=riscv64-unknown-linux

prefix="$HOME/.local/binutils-$TARGET"

base_dir="$PROJECTS/binutils-gdb"

if [ ! -d $base_dir ]
then
    git clone git://sourceware.org/git/binutils-gdb.git $base_dir
else
    echo "$base_dir already exists, skipping cloning..."
fi

cd $base_dir
git checkout $HEAD
git clean -xdf
./configure --target=$TARGET --prefix=$prefix
make -j $(nproc)
make install
