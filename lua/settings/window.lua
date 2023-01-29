-- simple custom function
-- toggle maximize pane and restore
local isZoomed = false

local function toggleMaximize()
    if (isZoomed) then
        vim.cmd 'wincmd ='
    else
        vim.api.nvim_win_set_width(0, 99999)
        vim.api.nvim_win_set_height(0, 99999)
    end
    isZoomed = not isZoomed
end

local map = require('utils').map
map('n', 'gm', toggleMaximize)

