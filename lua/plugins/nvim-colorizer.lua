-- display color code on background
-- https://github.com/NvChad/nvim-colorizer.lua
return {
    'NvChad/nvim-colorizer.lua',
    event = 'BufReadPre',
    config = function()
        require('colorizer').setup {}
    end
}
