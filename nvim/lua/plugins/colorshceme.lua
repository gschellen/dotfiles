return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    -- keys = {
    -- {
    -- this does not work
    --   "<Leader>tt",
    --   "<Cmd>require('tokyonight').toggle_transparency()<CR>",
    --   desc = "Toggle transparency",
    -- },
    -- },
  },
  -- {
  --   "xiyaowong/transparent.nvim",
  --   lazy = false,
  --   config = {
  --     extra_groups = {
  --       "FloatBorder",
  --       "LSPInfoBorder",
  --       "NeoTreeNormal",
  --       "NeoTreeNormalNC",
  --       "NormalFloat",
  --       "NotifyDEBUGBody",
  --       "NotifyDEBUGBorder",
  --       "NotifyERRORBody",
  --       "NotifyERRORBorder",
  --       "NotifyINFOBody",
  --       "NotifyINFOBorder",
  --       "NotifyTRACEBody",
  --       "NotifyTRACEBorder",
  --       "NotifyWARNBody",
  --       "NotifyWARNBorder",
  --       "TelescopeBorder",
  --       "TelescopePreviewNormal",
  --       "TelescopePromptNormal",
  --       "TelescopeResultsNormal",
  --       "WhichKeyFloat",
  --     },
  --     exclude_groups = {},
  --   },
  --   keys = {
  --     {
  --       "<Leader>tt",
  --       "<Cmd>TransparentToggle<Cr>",
  --       desc = "Toggle Transparency",
  --     },
  --   },
  -- },
}
