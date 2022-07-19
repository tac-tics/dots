#!/bin/bash

set -ex

run_tests=1

redis_dir="$PROJECTS/redis"
redis_commit="7.0.3"
skip_fetch=1
prefix="$HOME/.local/redis"

if [ ! -d $redis_dir ]
then
    git clone https://github.com/redis/redis.git $redis_dir
else
    echo "$redis_dir already exists, skipping cloning..."
fi

cd $redis_dir

if [[ "$skip_fetch" == "1" ]]
then
    echo "Skipping fetch..."
else
    git fetch
fi

git checkout $redis_commit

make clean
make PREFIX="$prefix"
if [[ "$run_tests" == "1" ]]; then
    make test
fi
make install PREFIX="$prefix"
