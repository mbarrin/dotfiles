"load plugins
execute pathogen#infect()

set autoindent
set backspace=2
set diffopt=filler,iwhite
set expandtab
set foldcolumn=2
set foldlevel=0
set foldmethod=indent
set guioptions-=m
set guioptions-=T
set hidden
set history=50
set laststatus=2
"set linebreak
set nocompatible
set nofen
set notimeout
set nottimeout
set ruler
set scrolloff=1
set showcmd
set showmatch
"set textwidth=0
"set textwidth=80
set timeoutlen=10000
set ttimeoutlen=10000
set virtualedit=block
set wildmenu

"colour foo
set t_Co=16
syntax enable
set background=dark
colorscheme solarized

"sets tabs to 4 spaces
set cindent shiftwidth=4
set shiftwidth=4
set softtabstop=4

"line numbers
set number

filetype on
"tries to do smart indenting based on filetype
filetype indent plugin on

"insensitive unless searching for capitals
set ignorecase
set smartcase
set incsearch

"easier split navigation
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"nerdtree foo
nmap \e :NERDTreeToggle<CR>

"Stuff for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"whitespace
"set list
"set listchars=trail:.

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


"Powerline
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
