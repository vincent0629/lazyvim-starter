return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      styles = {
        sidebars = "transparent",
      },
      on_colors = function(colors)
        colors.bg = "#000000"
      end,
    },
  },
}
