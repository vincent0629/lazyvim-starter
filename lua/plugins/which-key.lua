return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+goto" },
        ["gs"] = { name = "+surround" },
        ["z"] = { name = "+fold" },
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
        ["<leader>c"] = { name = "+code" },
        ["<leader>f"] = { name = "+file" },
        ["<leader>g"] = { name = "+go to" },
        ["<leader>q"] = { name = "+quit/session" },
        ["<leader>w"] = { name = "+windows" },
      }
    end,
  }
}
