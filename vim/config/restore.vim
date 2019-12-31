function! s:on_vimenter()
    if get(g:, 'startify_update_oldfiles')
        call map(v:oldfiles, 'fnamemodify(v:val, ":p")')
        autocmd startify BufNewFile,BufRead,BufFilePre *
              \ call s:update_oldfiles(expand('<afile>:p'))
    endif
    if argc() == 0 && bufname('%') == ''
        let recent_files = s:recent_files()
        if len(recent_files) > 0
            let most_recent_file = recent_files[0]
            exe 'edit ' . most_recent_file
        endif
    endif
endfunction


function! s:recent_files()
    let results = []
    let cwd = getcwd()

    for file in v:oldfiles
        if s:oldfile_filter(file, cwd)
            let results = add(results, file)
        endif
    endfor

    return results
endfunction

function! s:starts_with(string, prefix)
    return match(a:string, a:prefix) == 0
endfunction


function! s:contains(string, needle)
    return match(a:string, a:needle) >= 0
endfunction


function! s:oldfile_filter(file, cwd)
    if !s:starts_with(a:file, a:cwd)
        return 0
    endif

    if s:contains(a:file, '.git/')
        return 0
    endif

    if !filereadable(a:file)
        return 0
    endif

    return 1
endfunction


function! s:update_oldfiles(file)
  if g:startify_locked || !exists('v:oldfiles')
    return
  endif
  let idx = index(v:oldfiles, a:file)
  if idx != -1
    call remove(v:oldfiles, idx)
  endif
  call insert(v:oldfiles, a:file, 0)
endfunction


augroup startify
    autocmd VimEnter    * nested call s:on_vimenter()
    autocmd QuickFixCmdPre  *vimgrep* let g:startify_locked = 1
    autocmd QuickFixCmdPost *vimgrep* let g:startify_locked = 0
augroup END
