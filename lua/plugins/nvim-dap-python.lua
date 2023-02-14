-- python settings for nvim-dap
-- https://github.com/mfussenegger/nvim-dap-python
return {
    'mfussenegger/nvim-dap-python',
    dependencies = 'mfussenegger/nvim-dap',
    event = 'VeryLazy',
    keys = {
        { '<space>dt', function() require('dap-python').test_method() end, desc = 'nvim-dap-python.test_method()' },
        { '<F9>',      function() require('dap-python').test_method() end, desc = 'nvim-dap-python.test_method()' },
    },
    config = function()
        require('dap-python').setup('python')
        require('dap-python').test_runner = 'pytest'
    end
}
