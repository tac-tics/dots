filetype on
filetype plugin indent on

augroup FileTypes
    autocmd!
    autocmd Filetype xml setlocal autoindent nocindent nosmartindent indentexpr=
    autocmd Filetype html setlocal autoindent nocindent nosmartindent indentexpr=
    autocmd Filetype vim nnoremap <leader>R :source $MYVIMRC<cr>:echo "Reloaded .vimrc"<cr>

    autocmd Filetype yaml set tabstop=2
    autocmd Filetype yaml set shiftwidth=2
    autocmd Filetype yaml set softtabstop=2

    autocmd Filetype typescriptreact set filetype=typescript

    autocmd Filetype typescript set tabstop=2
    autocmd Filetype typescript set shiftwidth=2
    autocmd Filetype typescript set softtabstop=2

    autocmd Filetype javascript set tabstop=2
    autocmd Filetype javascript set shiftwidth=2
    autocmd Filetype javascript set softtabstop=2

    autocmd Filetype text set tw=100
augroup end

