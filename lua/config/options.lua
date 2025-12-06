local opt = vim.opt

opt.number = true
opt.wrap = false
opt.expandtab = true
opt.tabstop = 8
opt.list = true
opt.listchars = {
  trail = "-",
  tab = "» ",
  eol = "↲",
}

vim.g.autoformat = false
