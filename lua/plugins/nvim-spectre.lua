-- search/replace in multiple files
-- https://github.com/nvim-pack/nvim-spectre
return {
    "windwp/nvim-spectre",
    -- stylua: ignore
    keys = {
        { "<leader>sr", function()
            require("spectre").open()
        end, desc = "Replace in files (Spectre)" },
    },
}
