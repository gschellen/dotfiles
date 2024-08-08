-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

local wk = require("which-key")

wk.add({
  { "<leader>ww", ":w<CR>", desc = "Save File"},

  { "<leader>f", group = "Telescope" },
  { "<leader>ff", require('telescope.builtin').find_files, desc = "Find File" },
  { "<leader>fg", require('telescope.builtin').live_grep, desc = "Live Grep" },
  { "<leader>fb", require('telescope.builtin').buffers, desc = "Buffers"},
  { "<leader>fh", require('telescope.builtin').help_tags, desc = "Help Tags"},
  { "<leader>fs", require('telescope.builtin').current_buffer_fuzzy_find, desc = "Current Buffer Fuzzy Find"},
  { "<leader>fo", require('telescope.builtin').lsp_document_symbols, desc = "LSP Document Symbol"},
  { "<leader>fi", require('telescope.builtin').lsp_incoming_calls, desc = "LSP Incoming Calls"},

  { "<leader>q", group = "QuickFix" },
  { "<leader>qo", ":copen<CR>", desc = "Open QuickFix List" },
  { "<leader>qf", ":cfirst<CR>", desc = "Go to First QuickFix Item" },
  { "<leader>qn", ":cnext<CR>" , desc = "Go to Next Quickfix Item" },
  { "<leader>qp", ":cprev<CR>" , desc = "Go to Previous Quickfix Item" },
  { "<leader>ql", ":clast<CR>" , desc = "Go to Last Quickfix Item" },
  { "<leader>qc", ":cclose<CR>", desc = "Close Quickfix List" },

  { "<leader>e", group = "Nvim-tree" },
  { "<leader>ee", ":NvimTreeToggle<cr>", desc = "Toggle file explorer" },
  { "<leader>er", ":NvimTreeFocus<cr>", desc = "Focus file explorer" },
  { "<leader>ef", ":NvimTreeFindFile<cr>", desc = "Find file in explorer" },

  { "<leader>gb", ":GitBlameToggle<CR>", desc = "Git Blame Toggle" },

  { "<leader>h", group = "Harpoon" },
  { "<leader>ha", require("harpoon.mark").add_file, desc = "Add File" },
  { "<leader>hh", require("harpoon.ui").toggle_quick_menu, desc = "Toggle Menu"},
  { "<leader>h1", function() require("harpoon.ui").nav_file(1) end, desc = "Nav File 1" },
  { "<leader>h2", function() require("harpoon.ui").nav_file(2) end, desc = "Nav File 2" },
  { "<leader>h3", function() require("harpoon.ui").nav_file(3) end, desc = "Nav File 3" },
  { "<leader>h4", function() require("harpoon.ui").nav_file(4) end, desc = "Nav File 4" },
  { "<leader>h5", function() require("harpoon.ui").nav_file(5) end, desc = "Nav File 5" },
  { "<leader>h6", function() require("harpoon.ui").nav_file(6) end, desc = "Nav File 6" },
  { "<leader>h7", function() require("harpoon.ui").nav_file(7) end, desc = "Nav File 7" },
  { "<leader>h8", function() require("harpoon.ui").nav_file(8) end, desc = "Nav File 8" },
  { "<leader>h9", function() require("harpoon.ui").nav_file(9) end, desc = "Nav File 9" },

  { "<leader>g", group = "LSP" },
  { "<leader>gg", '<cmd>lua vim.lsp.buf.hover()<CR>', desc = "Hover" },
  { "<leader>gd", '<cmd>lua vim.lsp.buf.definition()<CR>', desc = "Definition" },
  { "<leader>gD", '<cmd>lua vim.lsp.buf.declaration()<CR>', desc = "Declaration" },
  { "<leader>gi", '<cmd>lua vim.lsp.buf.implementation()<CR>', desc = "Implementation" },
  { "<leader>gt", '<cmd>lua vim.lsp.buf.type_definition()<CR>', desc = "Type Definition" },
  { "<leader>gr", '<cmd>lua vim.lsp.buf.references()<CR>', desc = "References" },
  { "<leader>gs", '<cmd>lua vim.lsp.buf.signature_help()<CR>', desc = "Signature Help" },
  { "<leader>gR", '<cmd>lua vim.lsp.buf.rename()<CR>', desc = "Rename" },
  { "<leader>gf", '<cmd>lua vim.lsp.buf.format({async = true})<CR>', desc = "Format" },
  { "<leader>ga", '<cmd>lua vim.lsp.buf.code_action()<CR>', desc = "Code Action" },
  { "<leader>gl", '<cmd>lua vim.diagnostic.open_float()<CR>', desc = "Open Float" },
  { "<leader>gp", '<cmd>lua vim.diagnostic.goto_prev()<CR>', desc = "Go to Previous" },
  { "<leader>gn", '<cmd>lua vim.diagnostic.goto_next()<CR>', desc = "Go to Next" },
  { "<leader>gh", ':ClangdSwitchSourceHeader <CR>', desc = "Header <-> Source" },

  { "<leader>gf", '<cmd>lua vim.lsp.buf.format({async = true})<CR>', desc = "Format", mode = "v" },
  { "<leader>tr", '<cmd>lua vim.lsp.buf.document_symbol()<CR>', desc = "Document Symbol" },
  { "<C-Space>", '<cmd>lua vim.lsp.buf.completion()<CR>', desc = "Completion", mode = "i" },
  { "<leader>u", ':UndotreeToggle <CR>', desc = "Toggle UndoTree" },

  -- TMux Navigator
  { "<c-h>", '<cmd><C-U>TmuxNavigateLeft<cr>', desc = "Nav left" },
  { "<c-j>", '<cmd><C-U>TmuxNavigateLeft<cr>', desc = "Nav down" },
  { "<c-k>", '<cmd><C-U>TmuxNavigateLeft<cr>', desc = "Nav up" },
  { "<c-l>", '<cmd><C-U>TmuxNavigateLeft<cr>', desc = "Nav right" },

  { "<leader>n", group = "Aerial" },
  { "<leader>nt", ':AerialToggle <CR>', desc = "Aerial toggle" },
  { "<leader>nn", ':AerialNext <CR>', desc = "Aerial next" },
  { "<leader>np", ':AerialPrev <CR>', desc = "Aerial previous" },
})

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window
keymap.set("n", "<leader>sj", "<C-w>-") -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+") -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5") -- make split windows width bigger 
keymap.set("n", "<leader>sh", "<C-w><5") -- make split windows width smaller

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>") -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>") -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>") -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c") -- next diff hunk
keymap.set("n", "<leader>cp", "[c") -- previous diff hunk

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize tab

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Run REST query

-- Debugging
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", '<leader>br', "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", '<leader>ba', '<cmd>Telescope dap list_breakpoints<cr>')
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", '<leader>dd', function() require('dap').disconnect(); require('dapui').close(); end)
keymap.set("n", '<leader>dt', function() require('dap').terminate(); require('dapui').close(); end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", '<leader>di', function() require "dap.ui.widgets".hover() end)
keymap.set("n", '<leader>d?', function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
keymap.set("n", '<leader>df', '<cmd>Telescope dap frames<cr>')
keymap.set("n", '<leader>dh', '<cmd>Telescope dap commands<cr>')
keymap.set("n", '<leader>de', function() require('telescope.builtin').diagnostics({default_text=":E:"}) end)

