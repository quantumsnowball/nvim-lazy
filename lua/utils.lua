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

-- get nearest function name
function M.get_current_function_name()
    local ts_utils = require('nvim-treesitter.ts_utils')
    local current_node = ts_utils.get_node_at_cursor()

    if not current_node then
        print('Current node not found.')
        return ""
    end

    local expr = current_node
    while expr do
        if expr:type() == 'function_definition' then
            break
        end
        expr = expr:parent()
    end

    if not expr then
        print('Function definition not found')
        return ""
    end

    return (ts_utils.get_node_text(expr:child(1)))[1]
end

-- get nearest pytest function name
function M.get_nearest_pytest_function_name()
    local ts_utils = require('nvim-treesitter.ts_utils')
    local current_node = ts_utils.get_node_at_cursor()
    -- local get_node_text = vim.treesitter.query.get_node_text

    if not current_node then
        print('Current node not found.')
        return ""
    end

    local expr = current_node
    while expr do
        if expr:type() == 'function_definition' then
            local fnname = (ts_utils.get_node_text(expr:child(1)))[1]
            if string.sub(fnname, 1, 4) == 'test' then
                break
            end
        end
        expr = expr:parent()
    end

    if not expr then
        print('Function definition not found')
        return ""
    end

    return (ts_utils.get_node_text(expr:child(1)))[1]
end

return M
