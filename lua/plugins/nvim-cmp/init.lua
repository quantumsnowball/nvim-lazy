-- auto completion engine
-- https://github.com/hrsh7th/nvim-cmp
return {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip",
    },
    opts = function()
        local cmp = require("cmp")
        return {
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            }),
               
            formatting = {
                format = function(_, item)
                    local icons = require("plugins.nvim-cmp/constants").icons.kinds
                    if icons[item.kind] then
                        item.kind = icons[item.kind] .. item.kind
                    end
                    return item
                end,
            },
        }
    end
}

