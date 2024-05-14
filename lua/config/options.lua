-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.mouse = ""
opt.expandtab = false
opt.tabstop = 8
opt.listchars = {
  trail = "-",
  tab = "» ",
  eol = "↲",
}
--opt.eol = false
--opt.fixeol = false

vim.g.autoformat = false

local cmd = vim.cmd
cmd.aunmenu([[PopUp.How-to\ disable\ mouse]])
cmd.amenu([[PopUp.Open\ URL <Cmd>call jobstart(["open", expand("<cfile>")])<CR>]])
cmd.amenu([[PopUp.Open\ file\ under\ cursor <Cmd>e <cfile><CR>]])
