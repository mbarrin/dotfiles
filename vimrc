set nocompatible
filetype off

" Vundle initialization
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Bundles
Plugin 'altercation/vim-colors-solarized'
Plugin 'benmills/vimux.git'
Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/gitv'
Plugin 'honza/vim-snippets'
Plugin 'jwhitley/vim-matchit'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'mhinz/vim-startify'
Plugin 'moll/vim-node'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'regedarek/ZoomWin'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'skalnik/vim-vroom.git'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()

syntax enable
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set autoindent
set background=dark
set backspace=2
set cindent shiftwidth=2
set diffopt=filler,iwhite
set enc=utf-8
set expandtab
set fileencoding=utf-8
set foldcolumn=2
set foldlevel=0
set foldmethod=indent
set guifont=Terminus\ 10
set guioptions+=LlRrb
set guioptions-=LlRrb
set guioptions-=T
set guioptions-=m
set hidden
set history=50
set ignorecase
set incsearch
set laststatus=2
set linebreak
set nofen
set notimeout
set nottimeout
set number
set relativenumber
set ruler
set scrolloff=1
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set softtabstop=2
set t_Co=16
set timeoutlen=10000
set ttimeoutlen=10000
set virtualedit=block
set wildmenu

colorscheme solarized

"Set leader to space
let mapleader = "\<Space>"

"Plugin settings
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html'] }

let g:UltiSnipsExpandTrigger="<c-j>"
let g:vim_json_syntax_conceal = 0
let g:vroom_use_vimux = 1

"custom commands
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
:nnoremap <Leader>r :VroomRunTestFile<CR>
:nnoremap <F5> :GundoToggle<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
