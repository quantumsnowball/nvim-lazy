-- debug adapter for neovim
-- https://github.com/mfussenegger/nvim-dap
return {
    {
        'mfussenegger/nvim-dap',
        event = 'VeryLazy',
        keys = {
            { ';b', function() require('dap').toggle_breakpoint() end }
        }
    },
    {
        'rcarriga/nvim-dap-ui',
        dependencies = 'mfussenegger/nvim-dap',
        event = 'VeryLazy',
        opts = {},
        keys = {
            { '<F7>', function() require('dapui').toggle() end },
        }
    },
    {
        'mfussenegger/nvim-dap-python',
        dependencies = 'mfussenegger/nvim-dap',
        event = 'VeryLazy',
        opts = {},
        config = function()
            require('dap-python').setup('~/.pyenv/shims/python')
            require('dap-python').test_runner = 'pytest'
        end
    }
}
