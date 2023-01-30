return function(name, caps)
    local opts = { capabilities = caps }
    local loaded, configs = pcall(require, 'plugins.nvim-lspconfig.lsp.' .. name)
    if loaded then
        opts = vim.tbl_deep_extend('force', opts, configs)
    end
    require("lspconfig")[name].setup(opts)
end
