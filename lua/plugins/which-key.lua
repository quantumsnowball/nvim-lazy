-- pop up for keymap hints
-- https://github.com/folke/which-key.nvim
return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        require("which-key").setup {
            preset = "modern", -- classic, modern, and helix
            triggers = {
                { "<auto>", mode = "nixsotc" },
                -- put missing trigger key here
                { "q",      mode = { "n" } },
                { "t",      mode = { "n" } },
            },
            plugins = {
                marks = false,
                registers = false,
            },
            win = {
                height = { min = 4, max = 10 },
                border = "double",
                wo = {
                    winblend = 20,
                }
            },
        }
    end
}
