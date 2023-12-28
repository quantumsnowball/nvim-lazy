-- indentation line guides
-- https://github.com/lukas-reineke/indent-blankline.nvim
return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
        -- show space and end-of-line
        vim.opt.listchars:append("space:⋅")
        vim.opt.listchars:append("eol:↴")
        -- toggle space and eol chars
        vim.opt.list = false
        require('utils').map('n', '<F6>', ':set list!<CR>')
        -- colors
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }
        local hooks = require("ibl.hooks")
        -- create the highlight groups in the highlight setup hook, so they are reset
        -- every time the colorscheme changes
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
        end)
        -- setup
        require("ibl").setup {
            -- show_end_of_line = true,
            -- space_char_blankline = " ",
            -- show_current_context = true,
            -- show_current_context_start = true,
            indent = { highlight = highlight },
            scope = {
                enabled = true,
                char = '󱋱',
                highlight = { "Function", "Label" },
            }
        }
        -- wrapped lines follow indentation
        vim.opt.breakindent = true
    end
}
