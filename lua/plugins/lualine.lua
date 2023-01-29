-- lualine
-- https://github.com/nvim-lualine/lualine.nvim
return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        { 'kyazdani42/nvim-web-devicons', opt = true },
        'nvim-lua/lsp-status.nvim' -- TODO
    },
    
    config = function()
        require('lualine').setup {
            options = {
                -- Gallery
                -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
                theme = 'powerline_dark',
                disabled_filetypes = { 'packer', 'NvimTree', 'Outline' },
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                globalstatus = true,
            },
            sections = {
                lualine_c = { { 'filename', path = 1 } },
                lualine_x = {
                    function() return require('lsp-status').status() end,
                },
                lualine_y = {
                    'filetype',
                    'encoding',
                    'fileformat',
                },
                lualine_z = {
                    'location',
                    'progress',
                },
            },
            inactive_sections = {
                lualine_c = { { 'filename', path = 1 } }
            }
        }
        -- disable the original mode indicator
        vim.opt.showmode = false
    end
}

