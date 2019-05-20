hi StatusLine ctermfg=Black ctermbg=Grey
set laststatus=2
map <f12> :set invnumber<cr>: call ToggleSignColumn()<cr>

set number
set numberwidth=4
highlight LineNr cterm=bold ctermfg=DarkGrey

set colorcolumn=101
highlight ColorColumn cterm=bold ctermbg=Black

if has('signcolumn')
    set signcolumn=yes
endif

function! ToggleSignColumn()
    if !exists("b:signcolumn_on") || b:signcolumn_on
        set signcolumn=no
        let b:signcolumn_on=0
    else
        set signcolumn=auto
        let b:signcolumn_on=1
    endif
endfunction
