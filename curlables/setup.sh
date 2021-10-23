#!/bin/bash

set -ex

apt update
apt install -y git

export PROJECTS=$HOME/projects
mkdir $PROJECTS -p

cd $PROJECTS

if [ ! -d dots ]
then
    git clone https://github.com/tac-tics/dots.git
fi

cd dots

bash setup.sh

bash installers/apt.sh
bash installers/rust.sh
bash installers/pyenv.sh

bash installers/neovim.sh
