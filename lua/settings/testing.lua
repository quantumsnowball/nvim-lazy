local map = require('utils').map

--
-- testing
--
--[[

How about :new | lua vim.fn.termopen("fd | fzf")?

You can then expand by creating your own lua function that grabs the output
from termopen using vim.api.nvim_buf_lines and send it wherever you want.
You can also use vim.api.nvim_feedkeys to send <CR> to get rid of the
[Process exited] prompt.

There is a the nvim_treesitter#statusline() function which returns a string
describing where in the syntax tree the cursor is.

--]]
--
local run_nearest_pytest_function = function(pdb)
    local cwd = vim.fn.expand('%')
    local pytest_fnname = require('utils').get_nearest_pytest_function_name()
    -- don't run if not in a test file
    if #pytest_fnname == 0 then
        print('Invalid pytest test fnname')
        return
    end
    -- exec using terminal
    local path = cwd .. '::' .. pytest_fnname
    local command = 'pytest ' .. path .. ' --workers auto'
    if pdb then command = command .. ' --pdb' end
    vim.cmd('split')
    vim.cmd('horizontal resize 10')
    vim.cmd('terminal ' .. command)
end

map('n', '<space>t', function() run_nearest_pytest_function(false) end, { desc = 'run nearest pytest function' })
map('n', '<space>T', function() run_nearest_pytest_function(true) end, { desc = 'run nearest pytest function(--pdb)' })
