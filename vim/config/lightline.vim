set noshowmode

let g:lightline = {
\     'colorscheme': 'jellybeans',
\     'active': {
\         'left': [ ['mode', 'paste'],
\                   ['absolutepath', 'gitbranch', 'readonly', 'modified'] ],
\         'middle': [ ['filetype'] ],
\     },
\     'component_function': {
\         'gitbranch': 'GitBranch'
\     }
\ }

function! GitBranch()
    let branchname = fugitive#head()
    if branchname == ''
        return '(no branch)'
    else
        return 'branch: ' . branchname
    endif
endfunction
