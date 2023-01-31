return {
    'tanvirtin/monokai.nvim',
    enabled = false,
    opts = {
    },
    config = function()
        require('monokai').setup({ palette = require('monokai').ristretto })
        vim.cmd('colorscheme monokai')
    end,
}
