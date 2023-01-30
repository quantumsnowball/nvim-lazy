return function(caps)
    require("lspconfig").pyright.setup {
        capabilities = caps,
    }
end
