-- 👋 Jack's Place -- Neovim config entrypoint

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core configuration
require("core.options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins", {
  { import = 'plugins' },
})

-- Setup LSP & Completion
require("core.lsp")

-- Setup keymaps
-- (must happen after plugin load)
require("core.keymaps")

-- Load colorscheme
vim.cmd [[colorscheme tokyonight]]

-- vim: ts=2 sts=2 sw=2 et
