vim.lsp.set_log_level("off")
local lsp = require "lspconfig"

lsp.gopls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

lsp.terraformls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

lsp.jsonnet_ls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

lsp.ts_ls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

lsp.bashls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

lsp.zls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', 'gI', vim.lsp.buf.incoming_calls, {})
