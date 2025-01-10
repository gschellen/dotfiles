return {
  -- {
  --   "b0o/incline.nvim",
  --   event = "BufReadPre",
  --   enabled = true,
  --   config = function()
  --     local colors = require("tokyonight.colors").setup()
  --     require("incline").setup({
  --       highlight = {
  --         groups = {
  --           InclineNormal = { guibg = "#2196F3", guifg = colors.black },
  --           InclineNormalNC = { guifg = "#2196F3", guibg = colors.black },
  --         },
  --       },
  --       window = { margin = { vertical = 0, horizontal = 1 } },
  --       render = function(props)
  --         local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
  --         local icon, color = require("mini.icons").get("file", filename)
  --         return { { icon, guifg = color }, { " " }, { filename } }
  --       end,
  --     })
  --   end,
  -- },
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    enabled = true,
    config = function()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guifg = "#4FC3F7" },
            InclineNormalNC = { guifg = "#78909C" },
          },
        },
        hide = {
          cursorline = true,
          focused_win = false,
          only_win = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          local icon, color = require("mini.icons").get("file", filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
}
