#!/bin/bash
# sudo pip3 install python-language-server
#
# sudo apt install -y xsel
#
# rustup update
# rustup component add rls rust-analysis rust-src


repos=(
    # tools
    https://github.com/prabirshrestha/async.vim
    https://github.com/junegunn/fzf
    https://github.com/junegunn/fzf.vim
    https://github.com/scrooloose/nerdtree
    https://github.com/tpope/vim-fugitive
    https://github.com/airblade/vim-gitgutter

    https://github.com/machakann/vim-highlightedyank

    # language plugins
    https://github.com/rust-lang/rust.vim.git
    https://github.com/vhda/verilog_systemverilog.vim
    https://github.com/stephpy/vim-yaml
    https://github.com/leafgarland/typescript-vim

    # language server
    https://github.com/prabirshrestha/vim-lsp
    # https://github.com/neoclide/coc.nvim

    https://github.com/w0rp/ale

#    https://github.com/christoomey/vim-system-copy
#    https://github.com/justinmk/vim-sneak
#    https://github.com/tpope/vim-surround
#    https://github.com/vim-scripts/YankRing.vim
#    https://github.com/easymotion/vim-easymotion
)

force=0

while test $# -gt 0; do
    case "$1" in
        -f|--force)
            force=1
            shift
            ;;
        *)
            break
            ;;
    esac
done

for repo in ${repos[@]}
do
     # https://stackoverflow.com/questions/3162385/how-to-split-a-string-in-shell-and-get-the-last-field#3162500

    bundlename=${repo##*/}
    dir=~/.vim/bundle/$bundlename
    if [ ! -d $dir ] || [ $force == "1" ]
    then
        rm -rf $dir 2> /dev/null
        git clone "$repo" "$dir"
    else
        echo "$bundlename already exists. Skipping.."
    fi
done
