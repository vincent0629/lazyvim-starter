-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local enc_index = 0
local ReloadWithEncoding = function()
  enc_index = 1 - enc_index
  local encodings = {"utf-8", "GB18030"}
  vim.cmd("e ++enc=" .. encodings[enc_index + 1])
end

-- set keymap
local keymap = vim.keymap

keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle CopilotChat" })
keymap.set("n", "<leader>cs", "<cmd>sort<cr>", { desc = "Sort lines" })

keymap.set("n", "<leader>fl", ReloadWithEncoding, { desc = "Reload with encoding" })
