function! RStrip()
    %s/\s\+$//e
endfunction

noremap <F4> :call RStrip()<Esc>

" Comment with # in Python
autocmd BufReadPre,BufNewFile *.py noremap <F2> 0:norm i# <Esc>hh
