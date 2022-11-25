vim.g.mapleader = ','

vim.cmd [[
    function! RStrip() abort
        let l:pos = getcurpos()
        let l:search = @/
        keepjumps %substitute/\s\+$//e
        let @/ = l:search
        nohlsearch
        call setpos('.', l:pos)
    endfunction
]]


vim.keymap.set('n', '<leader>w', function()
    vim.cmd [[ call RStrip() ]]
end)

vim.keymap.set('n', '<leader>f', function() vim.cmd(':History') end)
vim.keymap.set('n', '<leader>e', function() vim.cmd(':Files') end)
vim.keymap.set('n', '<leader>r', function() vim.cmd(':Files') end)

vim.keymap.set('n', '<leader>n', function() vim.cmd(':NERDTreeFocus') end)
--vim.keymap.set('n', '<C-t>', function() vim.cmd(':NERDTree') end)
vim.keymap.set('n', '<C-t>', function() vim.cmd(':NERDTreeToggle') end)
vim.keymap.set('n', '<C-f>', function() vim.cmd(':NERDTreeFind') end)
vim.keymap.set('n', '<Tab>', function() vim.cmd(':bn') end)
vim.keymap.set('n', '<S-Tab>', function() vim.cmd(':bp') end)
vim.keymap.set('i', '<C-J>', function() vim.cmd(':stopinsert') end)
vim.keymap.set('n', '<C-J>', function() end)


--vim.cmd [[
--    autocmd VimEnter * NERDTree | wincmd p
--]]

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd [[
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
]]

-- " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
vim.cmd [[
    autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
        \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
]]
