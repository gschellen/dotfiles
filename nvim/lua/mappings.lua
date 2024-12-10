require "nvchad.mappings"
local util = require "util"
-- add yours here
local nomap = vim.keymap.del

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ww", ":w<CR>", {desc = "save file"})
map("n", "<leader>wa", ":wa<CR>", {desc = "save all"})

map("n", "<leader>tt", function() require("base46").toggle_transparency() end, {desc = " Toggle transparency"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
nomap("n","<Tab>")

if util.tmux_present then
  map("n","<C-h>", "<cmd> TmuxNavigateLeft<CR>", {desc = "Window left"})
  map("n","<C-j>", "<cmd> TmuxNavigateDown<CR>", {desc = "Window down"})
  map("n","<C-k>", "<cmd> TmuxNavigateUp<CR>", {desc = "Window up"})
  map("n","<C-l>", "<cmd> TmuxNavigateRight<CR>", {desc = "Window right"})
end
