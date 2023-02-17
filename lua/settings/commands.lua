-- greeting
vim.api.nvim_create_user_command('MyGreeting', 'echo "Hello world!"', {})

-- LSP
vim.api.nvim_create_user_command('MyLSPServerCaps', function()
    local clients = vim.lsp.get_active_clients()
    for _, client in pairs(clients) do
        print('LSP server capabilities: ' .. client.name)
        print(vim.inspect(client.server_capabilities))
    end
end, {})
vim.api.nvim_create_user_command('MyLSPClientCaps', function()
    print('LSP client capabilities: Neovim')
    local caps = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    print(vim.inspect(caps))
end, {})
