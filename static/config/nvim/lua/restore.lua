vim.cmd [[
    function! On_vimenter()
        if get(g:, 'startify_update_oldfiles')
            call map(v:oldfiles, 'fnamemodify(v:val, ":p")')
            autocmd startify BufNewFile,BufRead,BufFilePre *
                  \ call Update_oldfiles(expand('<afile>:p'))
        endif
        if argc() == 0 && bufname('%') == ''
            let recent_files = Recent_files()
            if len(recent_files) > 0
                let most_recent_file = recent_files[0]
                exe 'edit ' . most_recent_file
            endif
        endif
    endfunction
]]

vim.cmd [[
    function! Recent_files()
        let results = []
        let cwd = getcwd()

        for file in v:oldfiles
            if Oldfile_filter(file, cwd)
                let results = add(results, file)
            endif
        endfor

        return results
    endfunction
]]


vim.cmd [[
    function! Starts_with(string, prefix)
        return match(a:string, a:prefix) == 0
    endfunction
]]

vim.cmd [[
    function! Contains(string, needle)
        return match(a:string, a:needle) >= 0
    endfunction
]]

vim.cmd [[
    function! Oldfile_filter(file, cwd)
        if !Starts_with(a:file, a:cwd)
            return 0
        endif

        if Contains(a:file, '.git/')
            return 0
        endif

        if !filereadable(a:file)
            return 0
        endif

        return 1
    endfunction
]]

vim.cmd [[
    function! Update_oldfiles(file)
      if g:startify_locked || !exists('v:oldfiles')
        return
      endif
      let idx = index(v:oldfiles, a:file)
      if idx != -1
        call remove(v:oldfiles, idx)
      endif
      call insert(v:oldfiles, a:file, 0)
    endfunction
]]

vim.cmd [[
    augroup startify
        autocmd VimEnter    * nested call On_vimenter()
        autocmd QuickFixCmdPre  *vimgrep* let g:startify_locked = 1
        autocmd QuickFixCmdPost *vimgrep* let g:startify_locked = 0
    augroup END
]]
