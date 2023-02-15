return {
    {
        "nvim-neotest/neotest",
        event = 'VeryLazy',
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
        }
    },
    {
        -- adapters
        'nvim-neotest/neotest-python',
        event = 'VeryLazy',
        dependencies = {
            "nvim-neotest/neotest",
        },
        config = function()
            local neotest = require("neotest")
            neotest.setup({
                adapters = {
                    require("neotest-python")
                }
            })
        end
    }
}
