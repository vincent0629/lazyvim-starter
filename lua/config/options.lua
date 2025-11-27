-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.mouse = ""
opt.expandtab = true
opt.tabstop = 8
opt.listchars = {
  trail = "-",
  tab = "» ",
  eol = "↲",
}
--opt.eol = false
--opt.fixeol = false

vim.g.autoformat = false
