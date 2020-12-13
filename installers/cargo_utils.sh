install() {
    cmd="$1"
    if which "$cmd" > /dev/null
    then
        echo "$cmd already installed."
    else
        echo "Installing $cmd..."
        cargo install "$cmd"
    fi
}

install quail
install ripgrep
install fd-find
install du-dust
