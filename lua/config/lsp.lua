-- vim.lsp.set_log_level("off")
--local lsp = require "lspconfig"

-- vim.lsp.set_log_level("off")

vim.lsp.enable('gopls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

-- Bug with files with EOT in neovim 0.12 can cause this to spin 4eva
vim.lsp.enable('terraformls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.lsp.enable('jsonnet_ls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.lsp.enable('ts_ls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.lsp.enable('bashls', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.lsp.enable('ruby_lsp', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.lsp.enable('regols', {
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

vim.keymap.set('n', 'gd', ':FzfLua lsp_definitions<CR>', {})
vim.keymap.set('n', 'gD', ':FzfLua lsp_declarations<CR>', {})
vim.keymap.set('n', 'gy', ':FzfLua lsp_typedefs<CR>', {})
vim.keymap.set('n', 'gi', ':FzfLua lsp_implementations<CR>', {})
vim.keymap.set('n', 'gR', ':FzfLua lsp_references<CR>', {})
vim.keymap.set('n', 'gI', ':FzfLua lsp_incoming_calls<CR>', {})
