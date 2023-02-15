local M = {}

-- create keymap with presets
function M.map(mode, keys, command, options)
    -- defaults
    local defaults = {
        silent = true,
    }
    -- set keymaps
    options = vim.tbl_extend('force', defaults, options or {})
    vim.keymap.set(mode, keys, command, options)
end

-- a debug helper
function M.debug(arg)
    local res = vim.inspect(arg)
    print(res)
end

return M
