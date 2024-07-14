--vim.g.coq_settings = {
--        auto_start = true,
--        clients = {
--                tmux = {
--                        enabled = false
--                }
--        }
--}
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

require("lualine").setup()
require("gitsigns").setup()
require("nvim-surround").setup()

require("mason").setup()
local cmp = require "cmp"

local lsp = require "lspconfig"

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  --snippet = {
  --  expand = function(args)
  --    luasnip.lsp_expand(args.body)
  --  end
  --},
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp', keyword_length = 1},
    {name = 'buffer', keyword_length = 3},
    --{name = 'luasnip', keyword_length = 2},
  },
  window = {
    documentation = cmp.config.window.bordered()
  },
  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        --luasnip = '⋗',
        buffer = 'Ω',
        path = '⋗',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
    ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    --['<C-f>'] = cmp.mapping(function(fallback)
    --  if luasnip.jumpable(1) then
    --    luasnip.jump(1)
    --  else
    --    fallback()
    --  end
    --end, {'i', 's'}),

    --['<C-b>'] = cmp.mapping(function(fallback)
    --  if luasnip.jumpable(-1) then
    --    luasnip.jump(-1)
    --  else
    --    fallback()
    --  end
    --end, {'i', 's'}),

    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item(select_opts)
      else
        fallback()
      end
    end, {'i', 's'}),

    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item(select_opts)
      else
        fallback()
      end
    end, {'i', 's'}),
  },
})

lsp.gopls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.diffopt = { 'filler', 'iwhite' }
vim.opt.enc = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.foldmethod='expr'
vim.opt.foldexpr='nvim_treesitter#foldexpr()'
vim.opt.foldenable=false
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
vim.opt.termguicolors = true
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
