"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

nnoremap <leader>; ,
noremap <leader>w :call RStrip()<cr>:echo "Stripped trailing whitespace."<cr>

" Requires Fugitive
nnoremap <leader>gb :Gblame<cr>

" Requires fzf.vim
nnoremap <leader>r :Rg<cr>
nnoremap <leader>f :History<cr>
nnoremap <leader>e :Files<cr>
nnoremap <leader>gc :Commits<cr>
nnoremap <leader>gf :BCommits<cr>
nnoremap <leader>u :UndotreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <F12> :set invnumber<cr>: call ToggleSignColumn()<cr>

noremap <F10> :set invpaste<cr>
noremap <C-j> <C-e>j<C-e>j<C-e>j<C-e>j<C-e>jM
noremap <C-k> <C-y>k<C-y>k<C-y>k<C-y>k<C-y>kM

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NOP KEYS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap <C-n> <nop>
inoremap <C-p> <nop>
map Q <nop>

inoremap <ScrollWheelUp> <Nop>
inoremap <ScrollWheelDown> <Nop>
inoremap <S-ScrollWheelUp> <Nop>
inoremap <S-ScrollWheelDown> <Nop>

nmap <F2> bp
nmap <F3> bn
