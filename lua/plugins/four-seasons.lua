return {
    'quantumsnowball/four-seasons.nvim',
    branch = 'dev',
    config = function()
        require('four-seasons').setup({ palette = require('four-seasons').spring })
        vim.cmd('colorscheme four-seasons-spring')
    end,
}
