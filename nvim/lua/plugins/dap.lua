return
  {
    {
      "mfussenegger/nvim-dap",
      event = "VeryLazy",
      dependencies = {
        -- Runs preLaunchTask / postDebugTask if present
        { "stevearc/overseer.nvim", config = true },
        "rcarriga/nvim-dap-ui",
      },
      keys = {
        {
          "<leader>db",
          function() require("dap").list_breakpoints() end,
          desc = "DAP Breakpoints",
        },
        {
          "<leader>ds",
          function()
            local widgets = require("dap.ui.widgets")
            widgets.centered_float(widgets.scopes, { border = "rounded" })
          end,
          desc = "DAP Scopes",
        },
        {
          "<F3>",
          function() require("dap.ui.widgets").hover(nil, { border = "rounded" }) end,
          desc = "DAP Hover",
        },
        { "<F4>", "<CMD>DapTerminate<CR>", desc = "DAP Terminate" },
        { "<F5>", "<CMD>DapContinue<CR>", desc = "DAP Continue" },
        { "<F6>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
        { "<F9>", "<CMD>DapToggleBreakpoint<CR>", desc = "Toggle Breakpoint" },
        { "<F10>", "<CMD>DapStepOver<CR>", desc = "Step Over" },
        { "<F11>", "<CMD>DapStepInto<CR>", desc = "Step Into" },
        { "<F12>", "<CMD>DapStepOut<CR>", desc = "Step Out" },
        { "<F17>", function() require("dap").run_last() end, desc = "Run Last" },
        {
          "<F21>",
          function()
            vim.ui.input(
              { prompt = "Breakpoint condition: " },
              function(input) require("dap").set_breakpoint(input) end
            )
          end,
          desc = "Conditional Breakpoint",
        },
      },
      config = function()
        -- Signs
        for _, group in pairs({
          "DapBreakpoint",
          "DapBreakpointCondition",
          "DapBreakpointRejected",
          "DapLogPoint",
        }) do
          vim.fn.sign_define(group, { text = "●", texthl = group })
        end

        -- Setup

        -- Decides when and how to jump when stopping at a breakpoint
        -- The order matters!
        --
        -- (1) If the line with the breakpoint is visible, don't jump at all
        -- (2) If the buffer is opened in a tab, jump to it instead
        -- This avoid unnecessary jumps
        require("dap").defaults.fallback.switchbuf = "usevisible,usetab,newtab"

        -- -- Adapters
        -- -- C, C++, Rust
        -- require("plugins.dap.codelldb")
        -- -- Python
        -- require("plugins.dap.debugpy")
      end,
    },
    ---------------------------------
    {
      "jay-babu/mason-nvim-dap.nvim",
      event = "VeryLazy",
      dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
      },
      opts = {
        ensure_installed = {
          "codelldb",
          "python",
        },
        handlers = {}
      },
    },
    ---------------------------------
    {
      "rcarriga/nvim-dap-ui",
      event = "VeryLazy",
      dependencies = "nvim-neotest/nvim-nio",
      opts = {
        icons = {
          expanded = "󰅀",
          collapsed = "󰅂",
          current_frame = "󰅂",
        },
        layouts = {
          {
            elements = { "console", "watches" },
            position = "bottom",
            size = 15,
          },
        },
        expand_lines = false,
        controls = {
          enabled = false,
        },
        floating = {
          border = "rounded",
        },
        render = {
          indent = 2,
          -- Hide variable types as C++'s are verbose
          max_type_length = 0,
        },
      },
      keys = {
        { "<A-p>", function() require("dapui").toggle({ reset = true }) end, desc = "Toggle DAP UI" },
      },
    },
    ---------------------------------
    {
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
    },
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "clang-format",
          "codelldb",
        }
      }
    },
  }
