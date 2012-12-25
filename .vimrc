set nocompatible
set hidden
set rtp=~/.vim/bundle/vundle/,~/.vim,$VIMRUNTIME
let g:snippets_dir='~/.vim/snippets/'

"vundle config
filetype off " required!

set rtp+=~/vimfiles/bundle/vundle
call vundle#rc()

"let vundle manage vundle
Bundle 'gmarik/vundle'

"My bundles:
Bundle 'scrooloose/nerdtree' 
Bundle 'tomtom/tcomment_vim'
Bundle 'mattn/zencoding-vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-ragtag'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/JavaScript-Indent'

filetype plugin indent on " required!

"end vundle config

cd ~ "set home dir as pwd
autocmd BufEnter * silent! lcd %:p:h

"copy-paste from widows clipboard
set clipboard+=unnamed

"more informative status line
set statusline=%F%m%r%h%w\ [Buff=%n]\ [TYPE=%Y]\ [LEN=%L]

"always show the status line
set laststatus=2

"keep longer history
set history=100

"hide the toolbar
set guioptions-=T

"show line numbers
set number

"syntax highlighting
syntax on

"color scheme
colorscheme vividchalk

"make command completion useful
set wildmenu

"font
set guifont=Source_Code_Pro:h10
if has("mac") || has("macunix")
    set guifont=Source_Code_Pro:h15
endif

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"indentation
set autoindent
set smarttab

"case-smart searching - searches case sensitive only if there is a capital letter in the search expression
set ignorecase
set smartcase
set incsearch

"highlight search matches
set nohlsearch
set showmatch

"show the cursor position all the time
set ruler

"display incomplete commands
set showcmd

"add more context around the cursor
set scrolloff=5

"set cursor line
set cursorline

"make backspace work like most other apps
set backspace=indent,eol,start

"store temp files in a central spot     
set backupdir=~/vim-tmp
set directory=~/vim-tmp

"disable arrow keys completely
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

"use C-s for saving
noremap <C-s> :w<CR>
inoremap <C-s> <C-O>:w<CR>
vnoremap <C-s> <C-C>:w<CR>

"indent
nnoremap <Tab> >>
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-D>
vnoremap > >gv
vnoremap < <gv

"toggle NerdTree
noremap <leader>] :NERDTreeToggle<CR>

"snipmate aliases
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['html'] = 'html,htmlkendo,javascript,javascript-jquery,javascript-kendo'
let g:snipMate.scope_aliases['js'] = 'html,htmlkendo,javascript,javascript-jquery,javascript-kendo'
"snipmate trigger
let g:snips_trigger_key='<C-space>'

"zen code key mapping
let g:user_zen_leader_key = '<C-z>'