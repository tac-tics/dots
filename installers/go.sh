#!/bin/bash

# See: https://golang.org/doc/install

curl -L https://golang.org/dl/go1.15.6.linux-amd64.tar.gz -o /tmp/go.tar.gz
tar xvfz /tmp/go.tar.gz -C $HOME/.local/
