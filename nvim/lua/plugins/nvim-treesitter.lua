return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cpp",
        "cmake",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    keys = {
      {
        "[x",
        function()
          require("treesitter-context").go_to_context(vim.v.count1)
        end,
        { silent = true },
        desc = "Jump up to context (treesitter-context)",
      },
      {
        "<leader>ut",
        "<CMD>TSContextToggle<CR>",
        desc = "Toggle context (treesitter-context)",
      },
    },
  },
}
