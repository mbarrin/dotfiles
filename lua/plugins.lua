local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "https://github.com/folke/lazy.nvim.git",
                "--branch=stable", -- latest stable release
                lazypath,
        })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
        -- Sets up the line at the bottom
        'nvim-lualine/lualine.nvim',

        -- All the fzf stuff
        { 'junegunn/fzf', build = ':call fzf#install()' },
        'junegunn/fzf.vim',

        -- Move fast
        'easymotion/vim-easymotion',
        
        'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',

        -- LSP
        'neovim/nvim-lspconfig',
        "williamboman/mason.nvim",

        -- Treesitter stuff
        { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
        'nvim-treesitter/nvim-treesitter-context',
        'nvim-treesitter/nvim-treesitter-textobjects',

        -- Git stuff
        'tpope/vim-fugitive',
        'tpope/vim-rhubarb',
        'lewis6991/gitsigns.nvim',

        -- Fancy changing stuff
        'kylechui/nvim-surround',

        -- Colourscheme
        {
                'dracula/vim',
                name = 'dracula',
                lazy = false,
                priority = 1000,
                config = function()
                        vim.cmd([[colorscheme dracula]])
                end,
        },

        -- Language specific plugins
        { 'vim-ruby/vim-ruby', ft = {'ruby'}, lazy = true },

        {
                "ray-x/go.nvim",
                dependencies = {  -- optional packages
                        "ray-x/guihua.lua",
                        "neovim/nvim-lspconfig",
                        "nvim-treesitter/nvim-treesitter",
                },
                config = function()
                        require("go").setup()
                end,
                event = {"CmdlineEnter"},
                ft = {"go", 'gomod'},
                build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
        },

        {
                "rcarriga/nvim-dap-ui",
                dependencies = {
                        "mfussenegger/nvim-dap",
                        "nvim-neotest/nvim-nio",
                },
                ft = {"go", 'gomod'},
        },


        { 'mbarrin/vim-terraform', ft = {'terraform', 'terraform-vars'}, lazy = true },

        -- File browser
        {
                "nvim-neo-tree/neo-tree.nvim",
                branch = "v3.x",
                dependencies = {
                        "nvim-lua/plenary.nvim",
                        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                        "MunifTanjim/nui.nvim",
                }
        },

        { 'grafana/vim-alloy', ft = {'alloy'} },

        --{ "github/copilot.vim" },
        { "google/vim-jsonnet" }
})
