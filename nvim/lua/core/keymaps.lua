-- Set leader key to space
vim.g.mapleader = " "

local wk = require("which-key")

local keymap = vim.keymap

-- keymap.set('n', '<leader>fm', function() require('telescope.builtin').treesitter({default_text=":method:"}) end)

-- Telescope
wk.register({
  f = {
    name = "Telescope",
    f = { require('telescope.builtin').find_files, "Find File" },
    g = { require('telescope.builtin').live_grep, "Live Grep" },
    b = { require('telescope.builtin').buffers, "Buffers"},
    h = { require('telescope.builtin').help_tags, "Help Tags"},
    s = { require('telescope.builtin').current_buffer_fuzzy_find, "Current Buffer Fuzzy Find"},
    o = { require('telescope.builtin').lsp_document_symbols, "LSP Document Symbol"},
    i = { require('telescope.builtin').lsp_incoming_calls, "LSP Incoming Calls"},
  },
}, { prefix = "<leader>" })


-- General keymaps
wk.register({
  ["<leader>ww"] = { ":w<CR>", "Save File" },
  -- ["gu"] = { ":!open <c-r><c-a><CR>", "Go URL" },
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

-- Quickfix keymaps
wk.register({
  q = {
    name = "QuickFix",
    o = { ":copen<CR>", "Open QuickFix List" },
    f = { ":cfirst<CR>", "Go to First QuickFix Item" },
    n = { ":cnext<CR>" , "Go to Next Quickfix Item" },
    p = { ":cprev<CR>" , "Go to Previous Quickfix Item" },
    l = { ":clast<CR>" , "Go to Last Quickfix Item" },
    c = { ":cclose<CR>", "Close Quickfix List" },
  },
}, { prefix = "<leader>" })

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize tab

-- Nvim-tree
wk.register({
  e = {
    name = "Nvim-tree",
    e = { ":NvimTreeToggle<CR>", "Toggle File Explorer" },
    r = { ":NvimTreeFocus<CR>", "Focus File Explorer" },
    f = { ":NvimTreeFindFile<CR>", "Find File in Explorer" },
  },
}, { prefix = "<leader>" })

-- Git-blame
wk.register({ ["<leader>gb"] = { ":GitBlameToggle<CR>", "Git Blame Toggle" } })

-- Harpoon
wk.register({
    ["<leader>h"] = { name = "+Harpoon" },
    ["<leader>ha"] = { require("harpoon.mark").add_file, "Add File" },
    ["<leader>hh"] = { require("harpoon.ui").toggle_quick_menu, "Toggle Menu"},
    ["<leader>h1"] = { function() require("harpoon.ui").nav_file(1) end, "Nav File 1" },
    ["<leader>h2"] = { function() require("harpoon.ui").nav_file(2) end, "Nav File 2" },
    ["<leader>h3"] = { function() require("harpoon.ui").nav_file(3) end, "Nav File 3" },
    ["<leader>h4"] = { function() require("harpoon.ui").nav_file(4) end, "Nav File 4" },
    ["<leader>h5"] = { function() require("harpoon.ui").nav_file(5) end, "Nav File 5" },
    ["<leader>h6"] = { function() require("harpoon.ui").nav_file(6) end, "Nav File 6" },
    ["<leader>h7"] = { function() require("harpoon.ui").nav_file(7) end, "Nav File 7" },
    ["<leader>h8"] = { function() require("harpoon.ui").nav_file(8) end, "Nav File 8" },
    ["<leader>h9"] = { function() require("harpoon.ui").nav_file(9) end, "Nav File 9" },
} )

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Run REST query

-- LSP
wk.register({
  g = {
    name = "LSP",
    g = { '<cmd>lua vim.lsp.buf.hover()<CR>', "Hover" },
    d = { '<cmd>lua vim.lsp.buf.definition()<CR>', "Definition" },
    D = { '<cmd>lua vim.lsp.buf.declaration()<CR>', "Declaration" },
    i = { '<cmd>lua vim.lsp.buf.implementation()<CR>', "Implementation" },
    t = { '<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type Definition" },
    r = { '<cmd>lua vim.lsp.buf.references()<CR>', "References" },
    s = { '<cmd>lua vim.lsp.buf.signature_help()<CR>', "Signature Help" },
    R = { '<cmd>lua vim.lsp.buf.rename()<CR>', "Rename" },
    f = { '<cmd>lua vim.lsp.buf.format({async = true})<CR>', "Format" },
    a = { '<cmd>lua vim.lsp.buf.code_action()<CR>', "Code Action" },
    l = { '<cmd>lua vim.diagnostic.open_float()<CR>', "Open Float" },
    p = { '<cmd>lua vim.diagnostic.goto_prev()<CR>', "Go to Previous" },
    n = { '<cmd>lua vim.diagnostic.goto_next()<CR>', "Go to Next" },
  },
}, { prefix = "<leader>" })

wk.register({ ["<leader>gf"] = { '<cmd>lua vim.lsp.buf.format({async = true})<CR>', "Format" }, mode = "v" })
wk.register({ ["<leader>tr"] = { '<cmd>lua vim.lsp.buf.document_symbol()<CR>', "Document Symbol" }})
wk.register({ ["<C-Space>"] = { '<cmd>lua vim.lsp.buf.completion()<CR>', "Completion" }, mode = "i" })
wk.register({ ["<leader>u"] = { ':UndotreeToggle <CR>', "Toggle UndoTree" }})



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

-- TMux Navigator
wk.register({
    ["<c-h>"] = { "<cmd><C-U>TmuxNavigateLeft<cr>"},
    ["<c-j>"] = { "<cmd><C-U>TmuxNavigateDown<cr>"},
    ["<c-k>"] = { "<cmd><C-U>TmuxNavigateUp<cr>"},
    ["<c-l>"] = { "<cmd><C-U>TmuxNavigateRight<cr>"},
    ["<c-\\>"] = { "<cmd><C-U>TmuxNavigatePrevious<cr>" },
} )
