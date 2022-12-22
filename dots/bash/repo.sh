#!/bin/bash

export REPOS=$HOME/repos/
mkdir -p $REPOS

function repo() {
    cmd=$(dots-repo $@)
    eval "$cmd"
}

_repo_completion()
{
    COMPREPLY=( $(dots-repo --complete --line "${COMP_LINE[@]}" --cword $COMP_CWORD ${COMP_WORDS[@]}) )
}

complete -F _repo_completion repo
