return {
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ["<BS>"] = { "actions.parent", mode = "n" },
        ["H"] = { "actions.toggle_hidden", mode = "n" },
      },
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    keys = {
      {
        "<leader>o",
        "<cmd>Oil<cr>",
        desc = "oil (file management)",
      },
    },
  },
}
