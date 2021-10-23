#!/bin/bash

set -xe

if ! command -v rustup &> /dev/null
then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

rustup update
rustup component add rls rust-analysis rust-src
cargo install ripgrep
cargo install fd-find
