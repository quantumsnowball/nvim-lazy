-- smooth scrolling
-- https://github.com/declancm/cinnamon.nvim
return {
    'declancm/cinnamon.nvim',
    event = 'VeryLazy',
    config = function()
        require('cinnamon').setup {
            delay = 0, -- The default delay (in ms) between each line when scrolling.
        }
    end
}
