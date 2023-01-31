-- auto insert pairs of quotes
-- https://github.com/echasnovski/mini.pairs
return {
    'echasnovski/mini.pairs',
    event = 'VeryLazy',
    config = function(_, opts)
        require('mini.pairs').setup(opts)
    end,
}
