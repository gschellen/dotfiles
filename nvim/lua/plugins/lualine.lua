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
      table.insert(opts.sections.lualine_x, {
        function()
          local util = require("config.util")
          local count = util.count_modified_buffers()
          if count > 0 then
            return string.format("%d UB", count)
          else
            return ""
          end
        end,
        color = { fg = "orange" },
      })
    end,
  },
}
