vim.g.coq_settings = {auto_start = true}
vim.g.mapleader = ' '

local lua = require('plugins')

vim.g.terraform_fmt_on_save = 1
vim.g.go_term_enabled = true

require 'nvim-treesitter.configs'.setup {
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

local lsp = require "lspconfig"
local coq = require "coq"

lsp.gopls.setup(coq.lsp_ensure_capabilities())

vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.diffopt = { 'filler', 'iwhite' }
vim.opt.enc = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.foldmethod='expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()'
vim.opt.foldenable=false
vim.opt.guifont = 'Terminus 10'
vim.opt.hidden = true
vim.opt.history = 50
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.scrolloff = 1
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.softtabstop = 2
vim.opt.timeoutlen = 10000
vim.opt.ttimeoutlen = 10000
vim.opt.virtualedit = 'block'
vim.opt.wildmenu = true
vim.opt.wildmode = {'list', 'full'}

vim.keymap.set('n', '<leader>o', ':Neotree toggle<CR>', {noremap = true})

vim.keymap.set('n', '<leader>p', ':Files<CR>', {})
vim.keymap.set('n', '<leader>g', ':Rg<CR>', {})
vim.keymap.set('n', '<leader>i', ':Buffers<CR>', {})
vim.keymap.set('n', '<leader>h', ':Helptags<CR>', {})
