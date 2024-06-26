-- better buffer delete command
-- https://github.com/kazhala/close-buffers.nvim
return {
    'moll/vim-bbye',
    event = 'VeryLazy',
    dependencies = 'kazhala/close-buffers.nvim',
    config = function()
        local map = require('utils').map
        -- close last buffer doesn't play well with nvimtree, using vim-bbye now
        map('n', '<M-w>', ':Bdelete<CR>')
        map('n', '<space>x', ':Bdelete<CR>')
        map('n', 'qb', ':Bdelete<CR>')
        -- close all and other buffer by close-buffers.nvim
        local delete = require('close_buffers').delete
        local close_all_buffers = function()
            vim.cmd('Alpha')
            vim.cmd('tabonly')
            delete({ type = 'other' })
        end
        local close_hidden_buffers = function()
            delete({ type = 'hidden' })
        end
        local close_other_tabpages = function()
            vim.cmd('tabonly')
            delete({ type = 'hidden' })
        end
        -- keymaps
        map('n', 'qa', close_all_buffers, { desc = 'close_all_buffers()' })
        map('n', 'qh', close_hidden_buffers, { desc = 'close_all_hidden_buffers()' })
        map('n', 'qo', close_other_tabpages, { desc = 'close_other_tabpages()' })
    end
}
