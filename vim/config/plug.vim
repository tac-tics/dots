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

Plug 'neovim/nvim-lspconfig', { 'commit': '6a33e9ba757245a300531e370c6b2ebe6e5a7097' }
Plug 'junegunn/fzf', { 'commit': '052d17e66a3e6f9e9e61cec246d20a4dfdee6f71' }
Plug 'junegunn/fzf.vim', { 'commit': 'cabfd44a8b1666e9b0c1b18f55646dd8ec25d0d9' }
Plug 'tpope/vim-fugitive', { 'commit': '7bcfe539beee5fe8c542092732b6fd3786c6080e' }
Plug 'airblade/vim-gitgutter', { 'commit': 'dfe55e2b924b86c654b63edb9bedc42aa4e08048' }
Plug 'machakann/vim-highlightedyank', { 'commit': '931cc6bd53e4a1fdbe592751f0e13c0e401f0a49' }
Plug 'itchyny/lightline.vim', { 'commit': '709b2d8dc88fa622d6c076f34b05b58fcccf393f' }
Plug 'rust-lang/rust.vim', { 'commit': '96e79e397126be1a64fb53d8e3656842fe1a4532' }

" https://dev.to/drmason13/configure-neovim-for-rust-development-1fjn
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-lsp'

call plug#end()
