set viminfo='1000,f1,\"500

augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000
