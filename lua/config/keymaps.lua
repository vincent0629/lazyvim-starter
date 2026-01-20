local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", " ", "<Nop>", { silent = true, remap = false })
keymap("n", "<Esc>", "<cmd>nohlsearch<cr>")

keymap("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
keymap("n", "<leader>n", "<cmd>Noice<cr>", { desc = "Notifications" })

keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous tab" })
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next tab" })

keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to below window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to above window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

keymap("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

keymap("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New file" })
keymap("n", "<leader>fc", "<cmd>bd<cr>", { desc = "Close file" })
keymap("n", "<leader>fC", "<cmd>bd!<cr>", { desc = "Close file (ignore change)" })
keymap("n", "<leader>fo", "<cmd>lua Snacks.explorer()<cr>", { desc = "Open file" })
keymap("n", "<leader>fr", "<cmd>lua Snacks.picker.recent()<cr>", { desc = "Recent files" })

keymap("n", "<leader>sf", "<cmd>lua Snacks.picker.files()<cr>", { desc = "Find file" })
keymap("n", "<leader>sg", "<cmd>lua Snacks.picker.grep()<cr>", { desc = "Grep file" })
keymap("n", "<leader>sr", "<cmd>lua Snacks.picker.resume()<cr>", { desc = "Resume search" })

keymap("n", "<leader>wh", "<cmd>split<cr> | <C-w>j", { desc = "Split window" })
keymap("n", "<leader>wv", "<cmd>vsplit<cr> | <C-w>l", { desc = "Split window vertically" })
keymap("n", "<leader>wc", "<cmd>close<cr>", { desc = "Close window" })

keymap("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle CopilotChat" })
keymap("n", "<leader>cf", function() require('conform').format() end, { desc = "Format" })

keymap("n", "<leader>ul", "<cmd>set number! | set relativenumber!<cr>", { desc = "Toggle line number" })
keymap("n", "<leader>ut", "<cmd>lua Snacks.terminal()<cr>", { desc = "Terminal" })
