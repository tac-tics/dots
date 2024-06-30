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

vim.keymap.set('n', '<C-L>', vim.fn.toggle_linenos)

--vim.keymap.set('n', '<leader>f', function() vim.cmd(':History') end)
--vim.keymap.set('n', '<leader>e', function() vim.cmd(':Files') end)
--vim.keymap.set('n', '<leader>r', function() vim.cmd(':Files') end)
--
--vim.keymap.set('n', '<leader>n', function() vim.cmd(':NERDTreeFocus') end)
----vim.keymap.set('n', '<C-t>', function() vim.cmd(':NERDTree') end)
--vim.keymap.set('n', '<C-t>', function() vim.cmd(':NERDTreeToggle') end)
--vim.keymap.set('n', '<C-f>', function() vim.cmd(':NERDTreeFind') end)
--vim.keymap.set('n', '<Tab>', function() vim.cmd(':bn') end)
--vim.keymap.set('n', '<S-Tab>', function() vim.cmd(':bp') end)
--vim.keymap.set('i', '<C-J>', function() vim.cmd(':stopinsert') end)
--vim.keymap.set('n', '<C-J>', function() end)
