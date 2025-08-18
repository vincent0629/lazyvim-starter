-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local enc_index = 0
local ReloadWithEncoding = function()
  enc_index = 1 - enc_index
  local encodings = {"utf-8", "GB18030"}
  vim.cmd("e ++enc=" .. encodings[enc_index + 1])
end

-- clear keymap
vim.cmd.mapclear()

-- set keymap
local keymap = vim.keymap
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
keymap.set("n", "<leader>n", "<cmd>lua LazyVim.pick('notifications')()<cr>", { desc = "Notification history" })

keymap.set({"n", "v"}, "<leader>cf", "<cmd>lua LazyVim.format({force=true})<cr>", { desc = "Format" })
keymap.set("n", "<leader>cs", "<cmd>sort<cr>", { desc = "Sort lines" })

keymap.set("n", "<leader>ff", "<cmd>lua LazyVim.pick('files', {root=false})()<cr>", { desc = "Find file" })
keymap.set("n", "<leader>fg", "<cmd>lua LazyVim.pick('live_grep', {root=false})()<cr>", { desc = "Grep file" })
keymap.set("n", "<leader>fh", "<cmd>lua LazyVim.pick('resume')()<cr>", { desc = "Resume find/grep" })
keymap.set("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })
keymap.set("n", "<leader>fx", "<cmd>lua LazyVim.pick('explorer', {layout='sidebar'})()<cr>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>fr", "<cmd>lua LazyVim.pick('oldfiles', {cwd = vim.uv.cwd()})()<cr>", { desc = "Recent files" })
keymap.set("n", "<leader>fl", ReloadWithEncoding, { desc = "Reload with encoding" })

keymap.set("n", "<leader>gb", "<cmd>lua Snacks.picker.git_log_line()<cr>", { desc = "Git blame line" })

keymap.set("n", "<leader>ox", "<cmd>call jobstart([\"open\", expand(\"<cfile>\")])<cr>", { desc = "Open URL" })
keymap.set("n", "<leader>of", "<cmd>e <cfile><cr>", { desc = "Open file under cursor" })

keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

keymap.set("n", "<leader>ul", "<cmd>lua Snacks.toggle.line_number()<cr>", { desc = "Toggle line number" })

keymap.set("n", "<leader>wc", "<cmd>close<cr>", { desc = "Close window" })
keymap.set("n", "<leader>w|", "<cmd>vsplit<cr>", { desc = "Split window right" })
keymap.set("n", "<leader>w-", "<cmd>split<cr>", { desc = "Split window below" })

keymap.set("n", "<leader><tab>c", "<cmd>lua Snacks.bufdelete()<cr>", { desc = "Close tab" })
keymap.set("n", "<leader><tab><tab>", "<cmd>enew<cr>", { desc = "New tab" })

keymap.set("n", "<s-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
keymap.set("n", "<s-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap.set("n", "<c-t>", "<cmd>lua Snacks.terminal()<cr>", { desc = "Terminal" })
keymap.set("n", "<c-h>", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<c-j>", "<C-w>j", { desc = "Go to lower window" })
keymap.set("n", "<c-k>", "<C-w>k", { desc = "Go to upper window" })
keymap.set("n", "<c-l>", "<C-w>l", { desc = "Go to right window" })
keymap.set("n", "<c-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<c-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<c-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<c-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
