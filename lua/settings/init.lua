-- global leader key
vim.g.mapleader = ','

-- copy and paste to system clipboard
vim.cmd 'set clipboard^=unnamed,unnamedplus'

-- keymaps and hints
require('settings.general')
require('settings.clipboard')
require('settings.editing')
require('settings.configs')
