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
nnoremap <leader>b :Buffers<cr>
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LSP
" From the example on https://github.com/neovim/nvim-lspconfig
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

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
