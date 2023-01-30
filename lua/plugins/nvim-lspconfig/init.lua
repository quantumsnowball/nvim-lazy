-- neovim lsp configs
-- https://github.com/neovim/nvim-lspconfig
return {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }
}
