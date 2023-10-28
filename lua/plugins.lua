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
        'vim-airline/vim-airline',
        'vim-airline/vim-airline-themes',
        'ervandew/supertab',
        'gregsexton/gitv', 

        'junegunn/fzf', 
        'junegunn/fzf.vim', 

        'Lokaltog/vim-easymotion',
        'mhinz/vim-signify',

        {'ms-jpq/coq_nvim', branch = 'coq'},
        {'ms-jpq/coq.artifacts', branch = 'artifacts'},
        {'ms-jpq/coq.thirdparty', branch = '3p'},

        'neovim/nvim-lspconfig',
        { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
        'nvim-treesitter/nvim-treesitter-context',
        'nvim-treesitter/nvim-treesitter-textobjects',

        'tpope/vim-fugitive',
        'tpope/vim-rhubarb',
        'tpope/vim-surround',
        'tpope/vim-vinegar',

        {
		'dracula/vim',
		name = 'dracula',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme dracula]])
		end,
	},

        { 'vim-ruby/vim-ruby', ft = {'ruby'}, lazy = true },

        { 'fatih/vim-go', ft = {'go'}, lazy = true },

        { 'hashivim/vim-terraform', ft = {'terraform'}, lazy = true },

        {
                "nvim-neo-tree/neo-tree.nvim",
                branch = "v3.x",
                dependencies = { 
                        "nvim-lua/plenary.nvim",
                        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                        "MunifTanjim/nui.nvim",
                }
        },
})
