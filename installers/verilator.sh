#!/bin/bash

# commit="b7fec513cf2aea8cc30c5d2042f0642e7a253f54"
commit="stable"

prefix="$HOME/.local/verilator"

git clone https://github.com/verilator/verilator
cd verilator
git checkout $commit
autoconf
./configure --prefix=$prefix
make -j10
make install
