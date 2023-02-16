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
local PREFIX = 'test_'

local run_nearest_pytest_function = function(arg)
    local cwd = vim.fn.expand('%')
    local pytest_fnname = require('utils').get_nearest_pytest_function_name(PREFIX)
    -- don't run if not in a test file
    if not pytest_fnname then
        return
    end
    -- exec using terminal
    local path = cwd .. '::' .. pytest_fnname
    local command = 'pytest ' .. path
    if arg then command = command .. ' ' .. arg end
    vim.cmd('split')
    vim.cmd('horizontal resize 10')
    vim.cmd('terminal ' .. command)
    vim.fn.feedkeys('G')
end

map('n', ';t',
    function() run_nearest_pytest_function('--workers auto') end,
    { desc = 'run nearest pytest (parallel)' })
map('n', ';Td',
    function() run_nearest_pytest_function('--log-cli-level DEBUG --pdb') end,
    { desc = 'run nearest pytest (DEBUG, pdb)' })
map('n', ';Ti',
    function() run_nearest_pytest_function('--log-cli-level INFO --pdb') end,
    { desc = 'run nearest pytest (INFO, pdb)' })
map('n', ';Tw',
    function() run_nearest_pytest_function('--log-cli-level WARNING --pdb') end,
    { desc = 'run nearest pytest (WARNING, pdb)' })
map('n', ';TD',
    function() run_nearest_pytest_function('--log-cli-level DEBUG --pdb --log-file log/dev-debug.log') end,
    { desc = 'run nearest pytest (DEBUG, pdb, savelog)' })
map('n', ';TI',
    function() run_nearest_pytest_function('--log-cli-level INFO --pdb --log-file log/dev-info.log') end,
    { desc = 'run nearest pytest (INFO, pdb, savelog)' })
map('n', ';TW',
    function() run_nearest_pytest_function('--log-cli-level WARNING --pdb --log-file log/dev-warning.log') end,
    { desc = 'run nearest pytest (WARNING, pdb, savelog)' })
