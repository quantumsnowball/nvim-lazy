-- telescope
-- https://github.com/nvim-telescope/telescope.nvim
return {
    'nvim-telescope/telescope.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        -- configs
        local configs = require('plugins.telescope.configs')
        require('telescope').setup(configs)
        -- telescope keymaps
        require('plugins.telescope.keymaps')
    end
}

