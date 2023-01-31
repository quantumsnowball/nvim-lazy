-- lsp  related keymaps
return {
    -- editing
    { '<leader>rn', vim.lsp.buf.rename, desc = 'lsp.buf.rename()' },
    { '<leader>fd', vim.lsp.buf.format, desc = 'lsp.buf.format()' },
    { '<leader>qf', vim.lsp.buf.code_action, desc = 'lsp.buf.code_action()' },
    -- code inspect
    { 'gr', vim.lsp.buf.references, desc = 'lsp.buf.references()' },
    { 'gD', vim.lsp.buf.declaration, desc = 'lsp.buf.declaration()' },
    { 'gd', vim.lsp.buf.definition, desc = 'lsp.buf.definition()' },
    { 'K', vim.lsp.buf.hover, desc = 'lsp.buf.hover()' },
    { 'gi', vim.lsp.buf.implementation, desc = 'lsp.buf.implementation()' },
    { 'zk', vim.lsp.buf.signature_help, desc = 'lsp.buf.signature_help()' },
    { '<C-k>', vim.lsp.buf.signature_help, desc = 'lsp.buf.signature_help()', mode = 'i' },
    { '<space>D', vim.lsp.buf.type_definition, desc = 'lsp.buf.type_definition()' },
    { ']e', vim.diagnostic.goto_next, desc = 'lsp.diagnostic.goto_next()' },
    { '[e', vim.diagnostic.goto_prev, desc = 'lsp.diagnostic.goto_prev()' },
}
