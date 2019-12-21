function! RStrip() abort
    let l:pos = getcurpos()
    let l:search = @/
    keepjumps %substitute/\s\+$//e
    let @/ = l:search
    nohlsearch
    call setpos('.', l:pos)
endfunction

function! ToggleSignColumn()
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction
