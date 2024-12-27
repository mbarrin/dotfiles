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
