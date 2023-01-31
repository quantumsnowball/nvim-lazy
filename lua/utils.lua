local M = {}

-- create keymap with custom which-key hints
function M.map(mode, keys, command, options, hint)
    -- set keymaps
    options = vim.tbl_extend('force', { silent = true, desc = hint }, options or {})
    vim.keymap.set(mode, keys, command, options)
    -- set hint
    -- if hint then
    --     require('which-key').register({ [keys] = hint })
    -- end
end

-- a debug helper
function M.debug(arg)
    local res = vim.inspect(arg)
    print(res)
end

return M
