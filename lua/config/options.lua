local opt = vim.opt

opt.mouse = ""
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.expandtab = true
opt.tabstop = 8
opt.list = true
opt.listchars = {
  trail = "-",
  tab = "» ",
  eol = "↲",
}
opt.shiftwidth = 2
opt.smartindent = true
opt.ignorecase = true

vim.g.autoformat = false
