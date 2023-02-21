-- search/replace in multiple files
-- https://github.com/nvim-pack/nvim-spectre
return {
    "windwp/nvim-spectre",
    -- stylua: ignore
    keys = {
        { "<leader>sr", function()
            require("spectre").setup { open_cmd = 'new' }
            require("spectre").open()
        end, desc = "Replace in files (Spectre)" },
        { "<leader>SR", function()
            require("spectre").setup { open_cmd = 'vnew' }
            require("spectre").open()
        end, desc = "Replace in files (Spectre)" },
        -- { "<leader>sr", function()
        --     require("spectre").setup { open_cmd = 'new' }
        --     require("spectre").open_visual()
        -- end, desc = "Replace visual selected words (Spectre)", mode = 'v' },
        -- { "<leader>SR", function()
        --     require("spectre").setup { open_cmd = 'vnew' }
        --     require("spectre").open_visual()
        -- end, desc = "Replace visual selected words (Spectre)", mode = 'v' },
    },
    opts = {
        mapping = {
            ['run_current_replace'] = {
                map = "qr",
                cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
                desc = "replace current item"
            }
        }
    },
    init = function()
        -- open_visual is delayed by one if setting up using keys props
        -- temp fix: setup keymaps using vim cmd
        --
        -- step: copy, restore selection, open_visual, pull to far bottom, enter insert, paste from " register
        vim.cmd "vnoremap <leader>sr ygv<esc>:lua require('spectre').open_visual()<CR><c-w>Jjji<c-r>\""
        -- step: copy, restore selection, open_visual, pull to far right, enter insert, paste from " register
        vim.cmd "vnoremap <leader>SR ygv<esc>:lua require('spectre').open_visual()<CR><c-w>Ljji<c-r>\""
    end
}
