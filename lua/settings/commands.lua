-- greeting
vim.api.nvim_create_user_command('MyGreeting', 'echo "Hello world!"', {})

-- LSP
vim.api.nvim_create_user_command('MyLSPServerCaps', function()
    -- LSPs should be `servers`
    -- may be think of these are wrapper clients attaching to each server
    local wrappers = vim.lsp.get_active_clients()
    for _, wrapper in pairs(wrappers) do
        print('LSP server capabilities: ' .. wrapper.name)
        print(vim.inspect(wrapper.server_capabilities))
    end
end, {})
vim.api.nvim_create_user_command('MyLSPClientCaps', function()
    print('LSP client capabilities: Neovim')
    local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    print(vim.inspect(caps))
end, {})
