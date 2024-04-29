-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local mini = require("mini.bufremove")

local disable = {"ft", "fT", "wd", "w-", "w|", "ww", "-", "`", "|", "bb", "K", "L", "ur", "uf", "uF", "us", "uw", "ul", "uL", "ud", "uc", "uh", "uT", "ub", "ui", "xl", "xq", "l", "cd", "gg", "gG", "gf", "gb"}
for i = 1, table.getn(disable) do
  keymap.set("n", "<leader>" .. disable[i], "")
end
disable = {"l", "f", "<tab>", "]", "d", "["}
for i = 1, table.getn(disable) do
  keymap.set("n", "<leader><tab>" .. disable[i], "")
end

local enc_index = 0
local ReloadWithEncoding = function()
  enc_index = 1 - enc_index
  local encodings = {"utf-8", "gbk"}
  vim.cmd("e ++enc=" .. encodings[enc_index + 1])
end

keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New file" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find file" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep file" })
keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })
keymap.set("n", "<leader>fc", mini.delete, { desc = "Close file" })
keymap.set("n", "<leader>fe", "<cmd>Neotree filesystem reveal left<cr>", { desc = "File explorer" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })

keymap.set("n", "<leader>wh", "<cmd>vsplit<cr>", { desc = "Split window right" })
keymap.set("n", "<leader>wv", "<cmd>split<cr>", { desc = "Split window below" })
keymap.set("n", "<leader>wc", "<cmd>close<cr>", { desc = "Close window" })

keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

keymap.set("n", "<leader>gx", "<cmd>call jobstart([\"open\", expand(\"<cfile>\")])<cr>", { desc = "Open URL" })
keymap.set("n", "<leader>gf", "<cmd>e <cfile><cr>", { desc = "Open file under cursor" })

keymap.set("n", "<leader>ce", ReloadWithEncoding, { desc = "Reload with encoding" })
