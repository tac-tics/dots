"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TABS AND BACKUP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent

autocmd Filetype xml setlocal autoindent nocindent nosmartindent indentexpr=
autocmd Filetype html setlocal autoindent nocindent nosmartindent indentexpr=

set nobackup
set noswapfile
set nowritebackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Visual mode in NeoVim won't show without this.
highlight Visual cterm=reverse ctermbg=NONE

syntax on
set scroll=10
set wildmode=list:longest
set backspace=indent,eol,start

" For vim-gitgutter
set updatetime=100

" always show gutter
set signcolumn=yes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WHITESPACE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets special characters to display for trailing space
" and other obnoxious characters.
"
" See: https://www.compart.com/en/unicode/
" May require additional an fonts package:
"
" On Ubuntu:    $ sudo apt-get install ttf-ancient-fonts
" On OpenSusse: $ sudo zypper install gdouros-symbola-fonts
"
" 🞘🞝🞝🞝   <- for a tab
" ░░░    <- for trailing whitespace
" ␣      <- non-breaking space
set listchars=tab:🞘🞝,trail:░,nbsp:␣
set list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OTHER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable automatic continuation of comments
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

augroup EqualizeWindowsOnResize
    autocmd!
    autocmd VimResized * execute "normal! \<c-w>="
augroup end
