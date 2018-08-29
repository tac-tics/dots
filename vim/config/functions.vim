function! RStrip() abort
    let l:pos = getcurpos()
    let l:search = @/
    keepjumps %substitute/\s\+$//e
    let @/ = l:search
    nohlsearch
    call setpos('.', l:pos)
endfunction

noremap <F4> :call RStrip()<Esc>

" Comment with # in Python
autocmd BufReadPre,BufNewFile *.py noremap <F2> 0:norm i# <Esc>hh
