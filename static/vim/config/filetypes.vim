filetype on
filetype plugin indent on

augroup FileTypes
    autocmd!
    autocmd Filetype xml setlocal autoindent nocindent nosmartindent indentexpr=
    autocmd Filetype html setlocal autoindent nocindent nosmartindent indentexpr=
    autocmd Filetype vim nnoremap <leader>R :source $MYVIMRC<cr>:echo "Reloaded .vimrc"<cr>

    autocmd Filetype yaml set tabstop=4
    autocmd Filetype yaml set shiftwidth=4
    autocmd Filetype yaml set softtabstop=4

    autocmd Filetype typescriptreact set filetype=typescript

    autocmd Filetype typescript set tabstop=4
    autocmd Filetype typescript set shiftwidth=4
    autocmd Filetype typescript set softtabstop=4

    autocmd Filetype javascript set tabstop=4
    autocmd Filetype javascript set shiftwidth=4
    autocmd Filetype javascript set softtabstop=4

    autocmd Filetype text set tw=100
augroup end

