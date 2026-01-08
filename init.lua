require('config.options')
require('config.lazy')
require('config.keymaps')

vim.cmd[[colorscheme tokyonight]]

vim.notify = require('notify')

require("nvim-treesitter.configs").setup({
  ensure_installed = {"bash", "c", "cmake", "cpp", "css", "gn", "html", "java", "javascript", "json", "make", "python", "xml", "yaml"},
  sync_install = false,
})

require("which-key").add({
  {"<leader>c", group = "Code"},
  {"<leader>f", group = "File"},
  {"<leader>s", group = "Search"},
  {"<leader>u", group = "UI"},
  {"<leader>w", group = "Window"},
})

if vim.fn.argc() == 0 then
  require("persistence").load()
  vim.cmd("%argdel")
elseif not vim.wo.diff then
  vim.cmd("%argdel")
end
