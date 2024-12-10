return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    highlight_focused_file = true,
    opts = {
      update_focused_file = {
        enable = true,
        update_root = true
      },
    },
  },
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   highlight_focused_file = true,
  --   opts = function(_, conf)
  --     conf.update_focused_file = {
  --       enable = true,
  --       update_root = true
  --     }
  --     return conf
  --   end,
  -- },
  -- require("nvim-tree").setup({
  --   update_focused_file = { enable = true },
  -- })
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
