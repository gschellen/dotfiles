-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local util = require("config.util")

map("n", "<leader>ww", "<cmd>w<cr>", { desc = "save file" })
map("i", "jk", "<ESC>l", { desc = "exit insert mode" })
map("v", "/", "<ESC>/\\%V", { desc = "search within visual selection" })

if util.tmux_present then
  map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
  map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
  map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })
  map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })
end
