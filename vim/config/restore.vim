function! DoRestore(tid)
    let most_recent_file = MostRecentFile()
    exe 'edit ' . most_recent_file
endfunction

function! RestoreIfNoArgs()
    if argc() == 0 && bufname('%') == ''
        call timer_start(0, 'DoRestore')
    endif
endfunction

function! MostRecentFile()
    for line in readfile($HOME . '/.viminfo')
        if line[0] == '>' && line !~ '.git'
            return line[2:]
        endif
    endfor
endfunction

augroup OpenLastFileIfNoArgs
    autocmd!
    autocmd VimEnter * call RestoreIfNoArgs()
augroup end
