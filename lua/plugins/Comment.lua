-- toggle comment line
-- https://github.com/numToStr/Comment.nvim
return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup {}
        -- remap <leader>/ to line comment toggle
        vim.cmd 'nmap <leader>/ gcc'
    end
}

