return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, {
        function()
          return require("arrow.statusline").text_for_statusline_with_icons()
        end,
      })
      table.insert(opts.sections.lualine_c, {
        "searchcount",
        maxcount = 999,
        timeout = 500,
      })
    end,
  },
}
