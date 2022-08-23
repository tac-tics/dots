vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab =  true
vim.o.smartindent = true
vim.o.hlsearch = false

vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

vim.o.scroll = 10
vim.o.wildmode = 'list:longest'
vim.o.backspace = 'indent,eol,start'

-- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-- " Status line and gutter
-- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim.o.updatetime = 100
vim.o.number = true
vim.o.numberwidth = 6
vim.o.laststatus = 2
vim.o.colorcolumn = 101

vim.cmd [[
    set signcolumn=yes
]]

vim.cmd [[
    hi StatusLine ctermfg=Black ctermbg=Grey
]]

vim.cmd [[
    highlight LineNr cterm=bold ctermfg=DarkGrey
]]

vim.cmd [[
    highlight ColorColumn cterm=bold ctermbg=Black
]]


-- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-- " WHITESPACE
-- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
-- 
-- " Sets special characters to display for trailing space
-- " and other obnoxious characters.
-- "
-- " See: https://www.compart.com/en/unicode/
-- " May require additional an fonts package:
-- "
-- " On Ubuntu:    $ sudo apt-get install ttf-ancient-fonts
-- " On OpenSusse: $ sudo zypper install gdouros-symbola-fonts
-- "
-- " 🞘🞝🞝🞝   <- for a tab
-- " ░░░    <- for trailing whitespace
-- " ␣      <- non-breaking space
-- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim.o.listchars = 'tab:🞘🞝,trail:░,nbsp:␣'
vim.o.list = true

vim.cmd [[
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
]]

vim.cmd [[
    augroup EqualizeWindowsOnResize
        autocmd!
            autocmd VimResized * execute "normal! \<c-w>="
            augroup end
]]


--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
--" HISTORY
--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vim.o.undolevels = 1000
vim.o.undoreload = 10000

--" Restore cursor to last known position when opening a file.
vim.cmd [[
    augroup RestoreCursor
        autocmd!
            autocmd BufReadPost * call setpos(".", getpos("'\""))
            augroup end
]]
