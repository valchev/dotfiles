set nocompatible
set nowrap
set rtp+=~/.vim/bundle/Vundle.vim/
let g:snippets_dir='~/.vim/snippets/'

"vundle config
filetype off " required!

call vundle#begin()

"let vundle manage vundle
Plugin 'gmarik/Vundle.vim'

"My bundles:
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-eunuch'

Plugin 'scrooloose/nerdtree' 
Plugin 'mattn/emmet-vim'

Plugin 'corntrace/bufexplorer'
Plugin 'garbas/vim-snipmate'

"color schemas
Plugin 'chriskempson/base16-vim'

Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'groenewege/vim-less'
Plugin 'mileszs/ack.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'

"Plugin 'Valloric/YouCompleteMe'

Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Townk/vim-autoclose'

Plugin 'ervandew/supertab'

call vundle#end() " required!
filetype plugin indent on " required!

"end vundle config

cd ~ "set home dir as pwd
autocmd BufEnter * silent! lcd %:p:h

"copy-paste from widows clipboard
set clipboard+=unnamed

" whitespace!
set list listchars=tab:»·,trail:·

"more informative status line
set statusline=%F%m%r%h%w\ [Buff=%n]\ [TYPE=%Y]\ [LEN=%L]

"always show the status line
"set laststatus=2

"keep longer history
set history=100

"hide the toolbar
if has("win32") || has("win16")
    set guioptions-=T
endif

"show line numbers
set number

"syntax highlighting
syntax on

"color scheme
set t_Co=256
colorscheme jellybeans

"make command completion useful
set wildmenu
"stuff to ignore when tab completing
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif,.git,*.obj,*.rbc,*.class
set wildignore+=deploy/**,dist/**,release/**,*.min.js,*.js.map

"font
if has("win32") || has("win16")
    set guifont=Source_Code_Pro_Semibold:h10
elseif has("mac") || has("macunix")
    set guifont=Source_Code_Pro:h15
else
    set guifont=Source\ Code\ Pro\ Semibold\ 10
endif

nnoremap <F9>  :bw<CR>
nnoremap <F7>  :nohlsearch<CR>
nnoremap <F8> :setlocal spell! spell?<CR>
nnoremap <F12> :BufExplorer<CR>
inoremap <F12> <Esc>:BufExplorer<CR>

set hidden
"set showmode
set novisualbell

"Reload files changed outside vim
set autoread

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab smartindent

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
"set scrolloff=5

"set cursor line
set cursorline

"make backspace work like most other apps
set backspace=indent,eol,start

set undofile
set nobackup
set nowritebackup

"store temp files in a central spot
set backupdir=~/vim-tmp
set directory=~/vim-tmp

"disable Vim's persistent undo
set noundofile

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
inoremap <left> <nop>
inoremap <right> <nop>

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

"map leader key
let mapleader="  "

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
"let g:snips_trigger_key='<C-space>'
imap <C-space> <Plug>snipMateNextOrTrigger

"zen code key mapping

let g:user_zen_leader_key = '<C-z>'
let g:user_emmet_leader_key = '<C-z>'
