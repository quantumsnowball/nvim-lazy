-- debug adapter for neovim
-- https://github.com/mfussenegger/nvim-dap
return {
    'mfussenegger/nvim-dap',
    event = 'VeryLazy',
    keys = {
        { ';b',        function() require('dap').toggle_breakpoint() end, desc = 'nvim-dap.breakpoint()' },
        { '<F9>',      function() require('dap').continue() end,          desc = 'nvim-dap.continue()' },
        { '<space>dc', function() require('dap').continue() end,          desc = 'nvim-dap.continue()' },
        { '<space>du', function() require('dap').up() end,                desc = 'nvim-dap.up() [older]' },
        { '<space>dd', function() require('dap').down() end,              desc = 'nvim-dap.down() [newer]' },
        { '<F10>',     function() require('dap').terminate() end,         desc = 'nvim-dap.terminate()' },
        { '<space>de', function() require('dap').terminate() end,         desc = 'nvim-dap.terminate()' },
    }
}
