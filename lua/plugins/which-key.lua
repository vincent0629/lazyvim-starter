return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      {
        mode = { "n", "v" },
        { "<leader>o", group = "open" },
        { "<leader>b", hidden = true },
        { "<leader>d", hidden = true },
        { "<leader>x", hidden = true },
      }
    }
  }
}
