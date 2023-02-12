return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v2.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    event = 'VeryLazy',
    keys = {
        { '<leader>e', '<cmd>Neotree float reveal <cr>', desc = 'Neotree Toggle' },
    },
    opts = {
        default_component_configs = {
            git_status = {
                symbols = {
                    -- Change type
                    added    = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                    modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
                }
            }
        },
        window = {
            width = 120,
            mappings = {
                ['<esc>'] = 'close_window',
                ['o'] = 'toggle_node',
                ['e'] = 'toggle_node',
                ['E'] = 'expand_all_nodes',
                ['g-'] = 'open_split',
                ['g\\'] = 'open_vsplit',
            }
        }
    }
}
