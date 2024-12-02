return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      {
        mode = { "n", "v" },
        { "g", group = "goto" },
        { "gs", group = "surround" },
        { "z", group = "fold" },
        { "]", group = "next" },
        { "[", group = "prev" },
        { "<leader>c", group = "code" },
        { "<leader>f", group = "file" },
        { "<leader>o", group = "open" },
        { "<leader>q", group = "quit/session" },
        { "<leader>w", group = "windows" },
        { "<leader>b", hidden = true },
        { "<leader>x", hidden = true },
        { "<leader><tab>", hidden = true },
      }
    }
  }
}
