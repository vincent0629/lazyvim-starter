return {
  "folke/snacks.nvim",
  opts = {
    indent = { enabled = false },
    scroll = { enabled = false },
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = false,
        },
        grep = {
          hidden = true,
          ignored = false,
        },
        explorer = {
          hidden = true,
          ignored = false,
          layout = {
            layout = {
              position = "right",
              width = 0.25,
            },
          }
        }
      },
      layout = {
        layout = {
          backdrop = false,
          width = 0.8,
          min_width = 80,
          height = 0.8,
          min_height = 30,
          box = "vertical",
          border = "rounded",
          title = "{title} {live} {flags}",
          title_pos = "center",
          { win = "input", height = 1, border = "bottom" },
          { win = "list", border = "none" },
          { win = "preview", title = "{preview}", height = 0.6, border = "top" },
        },
      },
    },
  },
}
