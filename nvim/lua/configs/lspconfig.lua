-- load defaults i.e lua_lsp
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
nvlsp.defaults()

-- EXAMPLE
local servers = {
  "html",
  "cssls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- manual server setup
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    vim.keymap.set("n", "gh", "<cmd>ClangdSwitchSourceHeader<cr>", { buffer = bufnr })
    nvlsp.on_attach(client, bufnr)
  end,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
