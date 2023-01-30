-- fzf telescope extension
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim
return {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    dependencies = 'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    config = function()
        local tele = require('telescope')
        tele.load_extension('fzf')
    end
}
