if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

" Bundles
Plug '/usr/local/opt/fzf'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'fatih/vim-go'
Plug 'gregsexton/gitv'
Plug 'hashivim/vim-terraform'
Plug 'junegunn/fzf.vim'
Plug 'Keithbsmiley/rspec.vim'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-signify'
Plug 'regedarek/ZoomWin'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-ruby/vim-ruby'
Plug 'yssl/QFEnter'

call plug#end()

set nocompatible
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
set wildmode=longest,list,full
set wildmenu

colorscheme solarized

"Set leader to space
let mapleader = "\<Space>"

"Plugin settings
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_map = '<Leader>p'
"let g:ctrlp_match_window_bottom = 0
"let g:ctrlp_match_window_reversed = 0
"let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
"let g:ctrlp_user_command = 'ag %s -l --ignore tags --nocolor -g ""'
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_dotfiles = 0
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_match_window = 'results:50' " overcome limit imposed by max height

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = '/Users/matthew/bin/rubocop.sh'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_mode_map = { 'mode': 'active',
        \ 'active_filetypes': [],
        \ 'passive_filetypes': ['html'] }

let g:qfenter_vopen_map = ['<C-v>']
let g:qfenter_hopen_map = ['<C-CR>', '<C-s>', '<C-x>']
let g:qfenter_topen_map = ['<C-t>']

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

"custom commands
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
:nnoremap <Leader>o :NERDTreeToggle<CR>
:nnoremap <Leader>g :Grepper -tool ag<cr>
:nnoremap <Leader>p :Files<cr>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

