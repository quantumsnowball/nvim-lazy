return {
    {
        -- debug adapter for neovim
        -- https://github.com/mfussenegger/nvim-dap
        'mfussenegger/nvim-dap',
        event = 'VeryLazy',
        keys = {
            { ';b',        function() require('dap').toggle_breakpoint() end, desc = 'nvim-dap.breakpoint()' },
            { '<F9>',      function() require('dap').continue() end,          desc = 'nvim-dap.continue()' },
            { '<space>dc', function() require('dap').continue() end,          desc = 'nvim-dap.continue()' },
            { '<F10>',     function() require('dap').terminate() end,         desc = 'nvim-dap.terminate()' },
            { '<space>de', function() require('dap').terminate() end,         desc = 'nvim-dap.terminate()' },
        }
    },
    {
        -- debug ui for nvim-dap
        -- https://github.com/rcarriga/nvim-dap-ui
        'rcarriga/nvim-dap-ui',
        dependencies = 'mfussenegger/nvim-dap',
        event = 'VeryLazy',
        keys = {
            { '<F7>', function() require('dapui').toggle() end, desc = 'nvim-dap-ui.toggle()' },
        },
        config = function()
            local dapui = require("dapui")
            dapui.setup()
            local dap = require("dap")
            dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
            dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
            dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
        end
    },
    {
        -- python settings for nvim-dap
        -- https://github.com/mfussenegger/nvim-dap-python
        'mfussenegger/nvim-dap-python',
        dependencies = 'mfussenegger/nvim-dap',
        event = 'VeryLazy',
        config = function()
            require('dap-python').setup('python')
            require('dap-python').test_runner = 'pytest'
        end
    }
}
