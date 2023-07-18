local lua = require('plugins')

vim.g.terraform_fmt_on_save = 1
vim.g.coq_settings = {auto_start = true}
vim.g.go_term_enabled = true

local lsp = require "lspconfig"
local coq = require "coq"

lsp.gopls.setup(coq.lsp_ensure_capabilities())

vim.opt.omnifunc = 'syntaxcomplete#Complete'
vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.diffopt = filler,iwhite
vim.opt.enc = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.foldenable = false
vim.opt.foldcolumn = '2'
vim.opt.foldlevel = 0
vim.opt.foldmethod = 'indent'
vim.opt.guifont = 'Terminus 10'
vim.opt.hidden = true
vim.opt.history = 50
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.scrolloff = 1
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.softtabstop = 2
vim.opt.timeoutlen = 10000
vim.opt.ttimeoutlen = 10000
vim.opt.virtualedit = block
vim.opt.wildmenu = true
vim.opt.wildmode = {'list', 'full'}

vim.cmd("colorscheme dracula")

vim.g.python3_host_prog = '/usr/bin/python3'

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>o', ':Neotree toggle<CR>', {noremap = true})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>i', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
