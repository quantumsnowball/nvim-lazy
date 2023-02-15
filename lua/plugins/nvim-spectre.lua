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
        { "<leader>sr", function()
            require("spectre").setup { open_cmd = 'new' }
            require("spectre").open_visual({ select_word = true })
        end, desc = "Replace visual selected words (Spectre)", mode = 'v' },
        { "<leader>SR", function()
            require("spectre").setup { open_cmd = 'vnew' }
            require("spectre").open_visual({ select_word = true })
        end, desc = "Replace visual selected words (Spectre)", mode = 'v' },
    },
    opts = {
        mapping = {
            ['run_current_replace'] = {
                map = "qr",
                cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
                desc = "replace current item"
            }
        }
    }
}
