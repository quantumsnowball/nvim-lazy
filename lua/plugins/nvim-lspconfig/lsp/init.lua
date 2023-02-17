return function(name, neovim_caps)
    local opts = {}
    -- each server is informed by client's default caps
    opts.capabilities = neovim_caps
    -- Demo: default on_attach function basic info about the server
    -- opts.on_attach = function(client)
    --     print('LSP: ' .. client.name)
    --     print(vim.inspect(client.server_capabilities))
    -- end
    -- then try to update and override the default settings passed to setup()
    -- possible props:
    --   root_dir, name, filetypes, autostart,
    --   single_file_support, on_new_config, capabilities, cmd
    --   handlers, init_options, settings
    -- p.s. search help for `lspconfig-setup`
    local loaded, configs = pcall(require, 'plugins.nvim-lspconfig.lsp.' .. name)
    if loaded then
        opts = vim.tbl_deep_extend('force', opts, configs)
    end
    -- Then call lspconfig.setup
    require("lspconfig")[name].setup(opts)
    -- Can still modify the props after lsp is attached by setting on_attach callback
    -- to print server/client capabilities table:
    -- lua =vim.lsp.get_active_clients()[1].server_capabilities
    -- lua =require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
end
