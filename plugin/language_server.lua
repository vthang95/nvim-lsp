local servers = { 'tsserver' }
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  require("nvim-navic").attach(client, bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

nvim_lsp.tsserver.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.elixirls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = { "elixir-ls" }
}
