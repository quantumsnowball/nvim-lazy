return {
    -- neovim lsp configs
    -- https://github.com/neovim/nvim-lspconfig
    -- https://github.com/williamboman/mason.nvim,
    -- https://github.com/williamboman/mason-lspconfig.nvim,
    {
        "neovim/nvim-lspconfig",
        event = "BufReadPre",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        }
    },
    -- cmdline tools and lsp servers
    -- https://github.com/williamboman/mason.nvim
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { { "<leader>M", "<cmd>Mason<cr>", desc = "Mason" } },
        config = function()
            require("mason").setup()
        end,
    },
    -- mason-lspconfig
    -- https://github.com/williamboman/mason-lspconfig.nvim
    {
        "williamboman/mason-lspconfig.nvim",
        keys = require('plugins.nvim-lspconfig.keymaps'),
        config = function()
            local list = require('plugins.nvim-lspconfig.constants').ensure_installed
            require("mason-lspconfig").setup { ensure_installed = list }

            -- update server capabilities
            local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
            -- lsp server settings
            require('plugins.nvim-lspconfig.langs.sumneko_lua')(caps)
            require('plugins.nvim-lspconfig.langs.pyright')(caps)
        end,
    }
}
