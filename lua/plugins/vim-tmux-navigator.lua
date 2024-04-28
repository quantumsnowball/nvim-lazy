-- hjkl navigator in vim and tmux windows
-- https://github.com/christoomey/vim-tmux-navigator
return {
    'christoomey/vim-tmux-navigator',
    event = 'VeryLazy',
    keys = {
        { '<C-k>', ':TmuxNavigateUp<cr>',    { silent = true } },
        { '<C-j>', ':TmuxNavigateDown<cr>',  { silent = true } },
        { '<C-h>', ':TmuxNavigateLeft<cr>',  { silent = true } },
        { '<C-l>', ':TmuxNavigateRight<cr>', { silent = true } },
    },
    config = function()
        -- enable ctrl + hjkl only in normal mode
        vim.g.tmux_navigator_no_mappings = 1
    end
}
