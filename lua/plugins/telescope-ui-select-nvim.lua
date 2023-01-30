-- telescope-ui-select
-- https://github.com/nvim-telescope/telescope-ui-select.nvim
-- TODO
return {
    'nvim-telescope/telescope-ui-select.nvim',
    dependencies = 'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    config = function()
        local tele = require('telescope')
        tele.load_extension("ui-select")
    end
}

