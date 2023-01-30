return function(caps)
    require("lspconfig").sumneko_lua.setup {
        capabilities = caps,
        settings =
        {
            Lua = {
                diagnostics = {
                    globals = { 'vim' }
                }
            }
        }
    }
end
