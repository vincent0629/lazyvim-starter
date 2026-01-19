return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    tabline = {
      lualine_a = {
        {
          "buffers",
          max_length = vim.o.columns,
        }
      },
    },
    sections = {
      lualine_c = {
        {
          "filename",
          path = 1,
        }
      },
    }
  }
}
