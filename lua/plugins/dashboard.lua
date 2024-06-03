return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts) 
      opts.config.center = {
        { action = "Telescope find_files",                                     desc = " Find File",       icon = " ", key = "f" },
        { action = "ene | startinsert",                                        desc = " New File",        icon = " ", key = "n" },
        { action = "Telescope oldfiles",                                       desc = " Recent Files",    icon = " ", key = "r" },
        { action = "Telescope live_grep",                                      desc = " Find Text",       icon = " ", key = "g" },
        { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
        { action = "Lazy",                                                     desc = " Lazy",            icon = "󰒲 ", key = "l" },
        { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
      }
    end,
  }
}
