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

if executable('metals-vim')
   au User lsp_setup call lsp#register_server({
         \ 'name': 'metals',
         \ 'cmd': {server_info->['metals-vim']},
         \ 'initialization_options': { 'rootPatterns': 'build.sbt' },
         \ 'whitelist': [ 'scala', 'sbt' ],
         \ })
endif

noremap <leader>ll :LspHover<cr>
noremap <leader>la :LspCodeAction<cr>
noremap <leader>ld :LspDefinition<cr>
noremap <leader>lr :LspRename<cr>
noremap <leader>li :LspImplementation<cr>
noremap <leader>lt :LspTypeDefinition<cr>

noremap <leader>le :LspNextError<cr>
noremap <leader>lE :LspPreviousError<cr>

noremap <leader>ln :LspNextReference<cr>
noremap <leader>lN :LspPreviousReference<cr>

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_signs_error = {'text': 'E'}
let g:lsp_signs_warning = {'text': 'W'}
let g:lsp_signs_hint = {'text': 'h'}

let g:lsp_highlights_enabled = 1
let g:lsp_highlight_references_enabled = 0
let g:lsp_textprop_enabled = 0
