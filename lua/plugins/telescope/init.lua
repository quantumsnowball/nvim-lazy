-- telescope
-- https://github.com/nvim-telescope/telescope.nvim
return {
    'nvim-telescope/telescope.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        -- configs
        --local core_cf = require('plugins.navigation.telescope.configs')
        local configs = require('plugins.telescope.configs')
        --local ext_cf = require('plugins.navigation.telescope-nvim.extensions.configs')
        --local configs = vim.tbl_extend('error', core_cf, ext_cf)
        --local configs = vim.tbl_extend('error', core_cf )
        -- print(vim.inspect(configs))
        require('telescope').setup(configs)
        -- telescope keymaps
        require('plugins.telescope.keymaps')
        -- extensions
	--require('plugins.navigation.telescope.extensions')
    end
}

