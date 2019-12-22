"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HISTORY
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set viminfo='1000,f1,\"500

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Restore cursor to last known position when opening a file.
augroup RestoreCursor
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup end

" When opening a git commit, ignore this and set the position to position 1.
augroup GitCommit
    autocmd!
    autocmd Filetype gitcommit call setpos(".", [0, 0, 0, 0])
augroup end
