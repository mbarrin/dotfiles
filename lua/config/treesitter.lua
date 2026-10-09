require('nvim-treesitter').setup {

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  },

  highlight = {
    enable = true
  },
}

langs = { 'c', 'comment', 'go', 'gomod', 'gosum', 'gotmpl', 'gowork', 'html', 'javascript', 'json', 'jsonnet', 'lua', 'markdown', 'markdown_inline', 'promql', 'query', 'rego', 'ruby', 'sql', 'terraform', 'tsx', 'typescript', 'vim', 'vimdoc', 'yaml'}

require('nvim-treesitter').install(langs)

vim.api.nvim_create_autocmd('FileType', {
  pattern = langs,
  callback = function() vim.treesitter.start() end,
})
