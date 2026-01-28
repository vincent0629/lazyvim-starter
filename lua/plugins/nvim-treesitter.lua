return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  main = "nvim-treesitter.configs",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {"bash", "c", "cmake", "cpp", "css", "gn", "html", "java", "javascript", "json", "make", "python", "xml", "yaml"},
    highlight = {
      enable = true,
    },
  }
}
