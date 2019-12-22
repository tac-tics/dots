call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/async.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'

" language plugins
Plug 'rust-lang/rust.vim'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'stephpy/vim-yaml'
Plug 'leafgarland/typescript-vim'

" language server
Plug 'dense-analysis/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

call plug#end()
