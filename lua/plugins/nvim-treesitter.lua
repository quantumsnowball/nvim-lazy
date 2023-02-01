-- syntax highlighting
-- https://github.com/nvim-treesitter/nvim-treesitter
return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    event = 'BufReadPost',
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = 'all',
            ignore_install = { "phpdoc" }, -- can never download successfully on macos
            highlight = { enable = true },
            incremental_selection = { enable = true },
            textobjects = { enable = true },
            indent = { enable = false }
        }
    end
}
