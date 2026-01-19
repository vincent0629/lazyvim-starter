require('config.options')
require('config.lazy')
require('config.keymaps')

vim.cmd[[colorscheme tokyonight]]

vim.notify = require('notify')

if vim.fn.argc() == 0 then
  require("persistence").load()
  vim.cmd("%argdel")
elseif not vim.wo.diff then
  vim.cmd("%argdel")
end
