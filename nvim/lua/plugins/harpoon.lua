return {
  {
    "ThePrimeagen/harpoon",
    event = "VeryLazy",
    keys = {
      {
        "<leader>ha",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "add file (harpoon)",
      },
      {
        "<leader>hr",
        function()
          require("harpoon.mark").rm_file()
        end,
        desc = "remove file (harpoon)",
      },
      {
        "<leader>hm",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "toggle menu (harpoon)",
      },
      {
        "<leader>hn",
        function()
          require("harpoon.ui").nev_next()
        end,
        desc = "next file (harpoon)",
      },
      {
        "<leader>hp",
        function()
          require("harpoon.ui").nav_prev()
        end,
        desc = "previous file (harpoon)",
      },
      {
        "<leader>h1",
        function()
          require("harpoon.ui").nav_file(1)
        end,
        desc = "remove file (harpoon)",
      },
      {
        "<leader>h2",
        function()
          require("harpoon.ui").nav_file(2)
        end,
        desc = "file 2 (harpoon)",
      },
      {
        "<leader>h3",
        function()
          require("harpoon.ui").nav_file(3)
        end,
        desc = "file 3 (harpoon)",
      },
      {
        "<leader>h4",
        function()
          require("harpoon.ui").nav_file(4)
        end,
        desc = "file 4 (harpoon)",
      },
      {
        "<leader>h5",
        function()
          require("harpoon.ui").nav_file(5)
        end,
        desc = "file 5 (harpoon)",
      },
    },
  },
}
