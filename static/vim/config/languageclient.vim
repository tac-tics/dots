" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'typescript': ['/usr/bin/typescript-language-server'],
    \ }

let g:LanguageClient_useVirtualText = 0
let g:LanguageClient_hoverPreview = 'Always'

nnoremap <leader>ll :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

nnoremap <silent> <leader>ld :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <leader>lr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <silent> <leader>li :call LanguageClient#textDocument_implementation()<CR>
nnoremap <silent> <leader>lR :call LanguageClient#textDocument_rename()<CR>


let g:LanguageClient_useFloatingHover = 1

let g:LanguageClient_diagnosticsDisplay =  {
\    1: {
\        "name": "Error",
\        "texthl": "ALEError",
\        "signText": ">>",
\        "signTexthl": "ALEErrorSign",
\        "virtualTexthl": "ALEError",
\    },
\    2: {
\        "name": "Warning",
\        "texthl": "ALEWarning",
\        "signText": "--",
\        "signTexthl": "ALEWarningSign",
\        "virtualTexthl": "ALEWarning",
\    },
\    3: {
\        "name": "Information",
\        "texthl": "ALEInfo",
\        "signText": "ii",
\        "signTexthl": "ALEInfoSign",
\        "virtualTexthl": "Todo",
\    },
\    4: {
\        "name": "Hint",
\        "texthl": "ALEInfo",
\        "signText": "hh",
\        "signTexthl": "ALEInfoSign",
\        "virtualTexthl": "Todo",
\    },
\}

