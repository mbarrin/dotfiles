set nocompatible
filetype off

" Vundle initialization
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundles
Bundle 'Blackrush/vim-gocode'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mhinz/vim-signify'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'majutsushi/tagbar'
Bundle 'mhinz/vim-startify'
Bundle 'rking/ag.vim'
Bundle 'SirVer/ultisnips'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'chase/vim-ansible-yaml'
Bundle 'tpope/vim-vinegar'
Bundle 'rodjek/vim-puppet'
Bundle 'thoughtbot/vim-rspec'
Bundle 'elzr/vim-json'
Bundle 'honza/vim-snippets'
Bundle 'skalnik/vim-vroom.git'
Bundle 'benmills/vimux.git'
Bundle "ekalinin/Dockerfile.vim"
Bundle "godlygeek/tabular"

syntax enable
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set enc=utf-8
set fileencoding=utf-8

set autoindent
set backspace=2
set diffopt=filler,iwhite
set expandtab
set foldcolumn=2
set foldlevel=0
set foldmethod=indent
set guioptions-=m
set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb
set guifont=Terminus\ 10
set hidden
set history=50
set laststatus=2
set linebreak
set nofen
set notimeout
set nottimeout
set ruler
set scrolloff=1
set showcmd
set showmatch
set timeoutlen=10000
set ttimeoutlen=10000
set virtualedit=block
set wildmenu

"colour foo
set t_Co=16
"set background=light
colorscheme solarized

"sets tabs to 2 spaces
set cindent shiftwidth=2
set shiftwidth=2
set softtabstop=2

"line numbers
"set relativenumber
set number

"insensitive unless searching for capitals
set ignorecase
set smartcase
set incsearch

"Set leader to space
let mapleader = "\<Space>"

"Stuff for CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0


"var renaming
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
:nnoremap <Leader>r :VroomRunTestFile<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html'] }

let g:UltiSnipsExpandTrigger="<c-j>"
let g:vim_json_syntax_conceal = 0
let g:vroom_use_vimux = 1
