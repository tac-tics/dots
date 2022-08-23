local packer = require 'packer'

packer.init {
    display = {
      open_fn = require('packer.util').float,
      prompt_border = 'double',
    }
}

-- machakann/vim-highlightedyank
vim.g['highlightedyank_highlight_duration'] = 350


packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'machakann/vim-highlightedyank'
    use 'vim-airline/vim-airline'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'

--    use {
--        "folke/which-key.nvim",
--        config = function()
--            require("which-key").setup {}
--        end
--    }

    use 'neovim/nvim-lspconfig'
    use 'preservim/nerdtree'

end)
