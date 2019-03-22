if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

noremap <leader>ll :LspHover<cr>
noremap <leader>ld :LspDefinition<cr>
noremap <leader>lr :LspRename<cr>
noremap <leader>li :LspImplementation<cr>
noremap <leader>lt :LspTypeDefinition<cr>
