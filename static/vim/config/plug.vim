call plug#begin('~/.vim/plugged')

" Plug 'prabirshrestha/async.vim'
" Plug 'scrooloose/nerdtree'
" Plug 'vhda/verilog_systemverilog.vim'
" Plug 'stephpy/vim-yaml'
" Plug 'leafgarland/typescript-vim'
" language server
" Plug 'dense-analysis/ale'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
"
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'

Plug 'neovim/nvim-lspconfig', { 'commit': 'dd15974986619b1f3143a9e666e36f41763ccdb4' }
Plug 'junegunn/fzf', { 'commit': 'e4c3ecc57e99f4037199f11b384a7f8758d1a0ff' } " 0.28.0
Plug 'junegunn/fzf.vim', { 'commit': 'd6aa21476b2854694e6aa7b0941b8992a906c5ec' }
Plug 'tpope/vim-fugitive', { 'commit': '5a24c2527584e4e61a706ad7ecb3514ac7031307' } " 3.6
Plug 'airblade/vim-gitgutter', { 'commit': 'dfe55e2b924b86c654b63edb9bedc42aa4e08048' }
Plug 'machakann/vim-highlightedyank', { 'commit': '931cc6bd53e4a1fdbe592751f0e13c0e401f0a49' }
Plug 'itchyny/lightline.vim', { 'commit': '709b2d8dc88fa622d6c076f34b05b58fcccf393f' }
Plug 'rust-lang/rust.vim', { 'commit': '4aa69b84c8a58fcec6b6dad6fe244b916b1cf830' }

" https://dev.to/drmason13/configure-neovim-for-rust-development-1fjn
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-lsp'

call plug#end()
