hi StatusLine ctermfg=Black ctermbg=Grey
set laststatus=2

set number
set numberwidth=4
highlight LineNr cterm=bold ctermfg=DarkGrey

set colorcolumn=101
highlight ColorColumn cterm=bold ctermbg=Black

if has('signcolumn')
    set signcolumn=yes
endif
