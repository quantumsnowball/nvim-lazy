-- bootstrap lazy load
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- as required by many plugins, should load before all plugins
vim.opt.termguicolors = true

-- global leader key
vim.g.mapleader = ','


-- lazy.nvim setup
require("lazy").setup("plugins")


-- other nvim settings
require('settings')
