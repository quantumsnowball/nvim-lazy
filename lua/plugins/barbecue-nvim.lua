return {
    "utilyre/barbecue.nvim",
    -- enabled = false,
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
        'xiyaowong/nvim-transparent',  -- optional, needed to make winbar transparent
    },
    opts = {
        -- configurations go here
    },
    init = function()
        -- all highlight related to barbecue.nvim will be made transparent
        require('transparent').clear_prefix('barbecue')
    end
}
