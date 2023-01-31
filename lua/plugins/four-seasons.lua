return {
    'quantumsnowball/four-seasons.nvim',
    branch = 'dev',
    event = 'VimEnter',
    config = function()
        -- load
        require('four-seasons').setup({ palette = require('four-seasons').spring })
        -- theme variants
        local themes = {
            'four-seasons-spring',
            'four-seasons-summer',
            'four-seasons-autumn',
            'four-seasons-winter',
        }
        -- default theme
        local id = 4
        vim.cmd('colorscheme ' .. themes[id])
        -- toggle keymap
        require('utils').map('n', '<F3>', function()
            local selected = themes[id]
            print(selected)
            vim.cmd('colorscheme ' .. selected)
            if id >= 4 then
                id = 1
            else
                id = id + 1
            end
        end)
    end,
}
