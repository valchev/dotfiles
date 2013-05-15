set nocompatible
set hidden
set nowrap
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
Bundle 'mattn/zencoding-vim'

Bundle 'tomtom/tcomment_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-markdown'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/JavaScript-Indent'

Bundle 'ervandew/supertab'

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
"stuff to ignore when tab completing
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif

"font
set guifont=Source_Code_Pro:h10
if has("mac") || has("macunix")
    set guifont=Source_Code_Pro:h15
endif

"Reload files changed outside vim
set autoread

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

"indentation
set autoindent
set smartindent
set smarttab
set expandtab

"case-smart searching - searches case sensitive only if there is a capital letter in the search expression
set ignorecase
set smartcase
set incsearch

"highlight search matches
set hlsearch
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
nnoremap <left> <S-^>
nnoremap <right> <S-$>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <S-^>
vnoremap <right> <S-$>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <NOP>
inoremap <right> <NOP>

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

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=csscomplete#CompleteCSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

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

nnoremap ,d /<C-r><C-w>:<space>function<CR>
