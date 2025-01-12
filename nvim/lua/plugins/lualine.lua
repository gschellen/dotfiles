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
  -- add statusline helpers for arrow
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     {
  --       require("arrow.statusline").text_for_statusline_with_icons(),
  --       cond = function()
  --         return require("arrow.statusline").statusline.is_on_arrow_file()
  --       end,
  --     },
  --   },
  -- },
}
