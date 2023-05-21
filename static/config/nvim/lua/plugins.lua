local packer = require 'packer'

-- machakann/vim-highlightedyank
vim.g['highlightedyank_highlight_duration'] = 350


packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    use 'machakann/vim-highlightedyank'

--    use 'vim-airline/vim-airline'
--    use 'bling/vim-bufferline'

    use 'hrsh7th/nvim-cmp'
--    use 'hrsh7th/cmp-buffer'
--    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'

--    use {
--        "folke/which-key.nvim",
--        config = function()
--            require("which-key").setup {}
--        end
--    }

    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use 'neovim/nvim-lspconfig'
--    use 'preservim/nerdtree'
--

end)

require'nvim-treesitter.configs'.setup {
--    ensure_installed = { "c", "lua", "rust", "cpp", "verilog", "python", "bash" },
    highlight = {
        enable = true,
    },
    auto_install = true,
}

require("mason").setup()
require("mason-lspconfig").setup()
