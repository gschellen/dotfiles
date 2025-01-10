return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      style = "moon",
      on_colors = function(colors)
        colors.border = "#c099ff"
      end,
      -- keys = {
      -- {
      -- this does not work
      --   "<Leader>tt",
      --   "<Cmd>require('tokyonight').toggle_transparency()<CR>",
      --   desc = "Toggle transparency",
      -- },
      -- },
    },
  },
}
