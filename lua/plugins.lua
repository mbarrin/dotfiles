return require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'

        use 'vim-airline/vim-airline' 
        use 'vim-airline/vim-airline-themes' 
        use 'ervandew/supertab' 
        use 'gregsexton/gitv' 

        use 'junegunn/fzf' 
        use 'junegunn/fzf.vim' 

       use {
                'nvim-telescope/telescope.nvim', tag = '0.1.1',
                requires = { {'nvim-lua/plenary.nvim'} }
        }

        use 'Lokaltog/vim-easymotion' 
        use 'mhinz/vim-signify' 

        use {'ms-jpq/coq_nvim', branch = 'coq'} 
        use {'ms-jpq/coq.artifacts', branch = 'artifacts'} 
        use {'ms-jpq/coq.thirdparty', branch = '3p'} 

        use 'neovim/nvim-lspconfig' 
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} 

        use 'tpope/vim-fugitive' 
        use 'tpope/vim-rhubarb' 
        use 'tpope/vim-surround' 
        use 'tpope/vim-vinegar' 

        use { 'dracula/vim', as = 'dracula' } 

        use {
                'vim-ruby/vim-ruby',
                ft = {'ruby'},
                opt = true
        }

        use {
                'fatih/vim-go',
                ft = {'go'},
                opt = true
        }

        use {
                'hashivim/vim-terraform',
                ft = {'terraform'},
                opt = true
        }

        use {
                "nvim-neo-tree/neo-tree.nvim",
                branch = "v2.x",
                requires = { 
                        "nvim-lua/plenary.nvim",
                        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                        "MunifTanjim/nui.nvim",
                }
        }
end)
