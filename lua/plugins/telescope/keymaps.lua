local tb = require('telescope.builtin')
local map = require('utils').map

--
-- most common
-- should be as handy as possible, and not sharing a prefix with other combos
--
-- find files
map('n', '<leader>f', function() tb.find_files({ hidden = true }) end, {}, 'telescope.find_files()')
map('n', '<space>f', function() tb.find_files({ hidden = true }) end, {}, 'telescope.find_files()')
-- find words
map('n', '<leader>w', function() tb.live_grep({ additional_args = function() return { "--hidden" } end }) end, {},
    'telescope.live_grep()')
map('n', '<space>w', function() tb.live_grep({ additional_args = function() return { "--hidden" } end }) end, {},
    'telescope.live_grep()')
-- find recent files
map('n', '<leader>R', function() tb.oldfiles({ only_cwd = true }) end, {}, 'telescope.oldfiles()')
map('n', '<space>R', function() tb.oldfiles({ only_cwd = true }) end, {}, 'telescope.oldfiles()')
-- find buffers
map('n', '<leader>b', tb.buffers, {}, 'telescope.buffers()')
map('n', '<space>b', tb.buffers, {}, 'telescope.buffers()')
map('n', '<leader>B', function() tb.buffers({ initial_mode = 'insert' }) end, {}, 'telescope.buffers()')
map('n', '<space>B', function() tb.buffers({ initial_mode = 'insert' }) end, {}, 'telescope.buffers()')
-- fzf current buffer
map('n', '<leader>z', tb.current_buffer_fuzzy_find, {}, 'telescope.current_buffer_fuzzy_find()')
map('n', '<space>z', tb.current_buffer_fuzzy_find, {}, 'telescope.current_buffer_fuzzy_find()')
-- find helps
map('n', '<leader>H', tb.help_tags, {}, 'telescope.help_tags()')
map('n', '<space>H', tb.help_tags, {}, 'telescope.help_tags()')
-- find keymaps
map('n', '<leader>K', function() tb.keymaps({ initial_mode = 'insert' }) end, {}, 'telescope.keymaps()')
map('n', '<space>K', function() tb.keymaps({ initial_mode = 'insert' }) end, {}, 'telescope.keymaps()')
-- find dictionary
map('n', '<leader>ss', tb.spell_suggest, {}, 'telescope.spell_suggest()')
map('n', '<space>ss', tb.spell_suggest, {}, 'telescope.spell_suggest()')
-- lsp
map('n', '<leader>v', tb.lsp_references, {}, 'telescope.lsp_references()')
map('n', '<space>v', tb.lsp_references, {}, 'telescope.lsp_references()')
map('n', 'gd', tb.lsp_definitions, {}, 'telescope.lsp_definitions()')
-- registers
-- map('n', '<leader>"', tb.registers, {}, 'telescope.registers()')
map('n', '<space>"', tb.registers, {}, 'telescope.registers()')



--
-- less common pickers
-- propose to start with ,F to give way to fastest ,f
--
-- general operation
map('n', '<leader>F.', tb.resume, {}, 'telescope.resume()')
map('n', '<leader>F/', tb.pickers, {}, 'telescope.pickers()')

-- find files
map('n', '<leader>Fnf', tb.find_files, {}, 'telescope.find_files(--no-hidden)')
map('n', '<leader>Faf', function() tb.find_files({ hidden = true, no_ignore = true }) end, {},
    'telescope.find_files(--everything)')

-- find words
map('n', '<leader>Fnw', tb.live_grep, {}, 'telescope.live_grep(--no-hidden)')
map('n', '<leader>Faw', function()
    tb.live_grep({ additional_args = function() return { "--hidden", "--no-ignore" } end })
end, {}, 'telescope.live_grep(--everything)')

-- find tabpages
-- map('n', 'T', tb.tabpages, {}, 'telescope.tabpages()')

-- find jumplist
map('n', '<leader>Fj', tb.jumplist, {}, 'telescope.jumplist()')

-- grep visual selected text directly
map('v', '<leader>Fsw', tb.grep_string, {}, 'telescope.grep_string(--visual-mode)')
map('v', '<leader>*', tb.grep_string, {}, 'telescope.grep_string(--visual-mode)')

-- color scheme
map('n', '<leader>Fcs', tb.colorscheme, {}, 'telescope.colorscheme()')

-- git navigation
map('n', '<leader>gC', tb.git_commits, {}, 'telescope.git_commits()')
map('n', '<leader>gbc', tb.git_bcommits, {}, 'telescope.git_bcommits()')
map('n', '<leader>gd', tb.git_status, {}, 'telescope.git_status()')

-- vim commands
map('n', '<leader>F;', tb.command_history, {}, 'telescope.command_history()')
map('n', '<leader>Fch', tb.command_history, {}, 'telescope.command_history()')
map('n', '<leader>Fcc', tb.commands, {}, 'telescope.command_custom()')

-- vim autocmds
map('n', '<leader>Fac', tb.autocommands, {}, 'telescope.autocommand()')

-- lsp
map('n', '<leader>Fe', tb.diagnostics, {}, 'telescope.diagnostics()')
map('n', '<leader>Fca', vim.lsp.buf.code_action, {}, 'telescope.code_action()')

-- highlights
map('n', '<leader>Fi', tb.highlights, {}, 'telescope.highlights()')

-- treesitter objects
map('n', '<leader>Fm', tb.treesitter, {}, 'telescope.treesitter()')

-- marks
map('n', '<leader>F\'', tb.marks, {}, 'telescope.marks()')

-- list all telescop.builtin functions
map('n', '<leader>Fp', tb.builtin, {}, 'telescope.builtin()')

-- list vim options
map('n', '<leader>Fo', tb.vim_options, {}, 'telescope.vim_options()')
