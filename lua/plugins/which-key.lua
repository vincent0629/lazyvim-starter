return {
  "folke/which-key.nvim",
  opts = {
    preset = "helix",
    spec = {
      {
        {"<leader>c", group = "Code"},
        {"<leader>f", group = "File"},
        {"<leader>s", group = "Search"},
        {"<leader>u", group = "UI"},
        {"<leader>w", group = "Window"},
      }
    },
  },
}
