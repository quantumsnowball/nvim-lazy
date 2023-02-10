-- fzf telescope extension
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
return {
    'nvim-telescope/telescope-fzf-native.nvim',
    event = 'VeryLazy',
    enabled = false,
    build = 'make',
    dependencies = 'nvim-telescope/telescope.nvim',
    config = function()
        local tele = require('telescope')
        tele.load_extension('fzf')
    end
}
