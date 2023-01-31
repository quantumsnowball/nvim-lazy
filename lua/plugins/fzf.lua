-- fzf
-- https://github.com/junegunn/fzf
return {
    'junegunn/fzf',
    run = function()
        vim.fn['fzf#install']()
    end
}
