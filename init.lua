local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('altercation/vim-colors-solarized')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('christoomey/vim-tmux-navigator')
Plug('dracula/vim', { as = 'dracula' })
Plug('fatih/vim-go')
Plug('ervandew/supertab')
Plug('gregsexton/gitv')

Plug('hashivim/vim-terraform')
vim.g.terraform_fmt_on_save = 1

Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('Keithbsmiley/rspec.vim')
Plug('Lokaltog/vim-easymotion')
Plug('mhinz/vim-signify')

Plug('ms-jpq/coq_nvim', {branch = 'coq'})
Plug('ms-jpq/coq.artifacts', {branch = 'artifacts'})
Plug('ms-jpq/coq.thirdparty', {branch = '3p'})
vim.g.coq_settings = {auto_start = true}

Plug('neovim/nvim-lspconfig')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug('regedarek/ZoomWin')
Plug('scrooloose/nerdtree')
Plug('scrooloose/nerdcommenter')
Plug('tpope/vim-fugitive')
Plug('tpope/vim-rhubarb')
Plug('tpope/vim-surround')
Plug('tpope/vim-vinegar')
Plug('vim-ruby/vim-ruby')

vim.call('plug#end')

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
vim.opt.wildmode = longest,list,full
vim.opt.wildmenu = true

vim.cmd("colorscheme dracula")

vim.g.python3_host_prog = '/usr/bin/python3'

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>o', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>p', ':Files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>i', ':Buffers<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>g', ':Rg<CR>', {noremap = true})
