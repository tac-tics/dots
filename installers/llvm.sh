#!/bin/bash

set -xe

commit="llvmorg-16.0.6"

build_dir="$PROJECTS/llvm-project"
prefix="$HOME/.local/llvm"

if [ ! -d $build_dir ]
then
    git clone https://github.com/llvm/llvm-project.git
else
    echo "$build_dir already exists, skipping cloning..."
fi

cd $build_dir
git checkout $commit

mkdir -p build

cmake -B build/ -S llvm -G Ninja \
    -DCMAKE_INSTALL_PREFIX=/opt/llvm \
    -DCMAKE_BUILD_TYPE=MinSizeRel \
    -DLLVM_TARGETS_TO_BUILD="RISCV;X86;WebAssembly" \
    -DCMAKE_INSTALL_PREFIX=$prefix \
    -DLLVM_ENABLE_PROJECTS="clang;lld;compiler-rt"

cd build
ninja -j $(nproc)
ninja install
