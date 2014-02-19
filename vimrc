filetype off

" Vundle initialization
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundles
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mhinz/vim-signify'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'lepture/vim-jinja'
Bundle 'majutsushi/tagbar'
Bundle 'mhinz/vim-startify'
Bundle 'rking/ag.vim'
Bundle 'SirVer/ultisnips'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'chase/vim-ansible-yaml'

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
syntax on
set background=dark
colorscheme solarized

"sets tabs to 2 spaces
set cindent shiftwidth=2
set shiftwidth=2
set softtabstop=2

"line numbers
"set relativenumber
set number

filetype on
"tries to do smart indenting based on filetype
filetype indent plugin on

"insensitive unless searching for capitals
set ignorecase
set smartcase
set incsearch

"Stuff for CtrlP
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

"vim airline settings


"whitespace
set list
set listchars=trail:.

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

" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key
function! g:UltiSnips_Complete()
    call UltiSnips_ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips_JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
