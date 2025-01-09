return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    opts = {
      notify_on_error = true,
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        html = { "djlint" },
        go = { "gofmt", "goimports" },
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
      formatters = {
        clang_format = {
          prepend_args = { "--style=file", "--fallback-style=Microsoft" },
        },
      },
    },
  },
}
