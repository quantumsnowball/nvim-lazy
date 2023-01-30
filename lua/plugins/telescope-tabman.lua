-- tabman
-- https://github.com/quantumsnowball/telescope-tabman.nvim
return {
    'quantumsnowball/telescope-tabman.nvim',
    branch = 'dev',
    dependencies = 'nvim-telescope/telescope.nvim',
    keys = {
        { '<leader>t', function()
            tabman({ layout_config = layout_config })
        end, 'telescope.tabpages()'},
        { '<leader>ft', function()
            tabman({ layout_config = layout_config, initial_mode = 'insert' })
        end, 'telescope.tabpages()'},
    },
    config = function()
        local tele = require('telescope')
        local tabman = tele.extensions.tabman.tabman
        -- load extension
        tele.load_extension('tabman')
        -- configs
        local layout_config = { width = 0.7, preview_height = 0.5, }
    end
}

