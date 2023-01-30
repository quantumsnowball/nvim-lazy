-- auto completion engine
-- https://github.com/hrsh7th/nvim-cmp
return {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
    },
    opts = function()
        local cmp = require("cmp")
        return {
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                -- { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            }),

        }
    end
}

