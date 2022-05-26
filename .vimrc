syntax on
set hlsearch
set ignorecase
set smartcase
set incsearch
set number
set noswapfile
let mapleader = "'"

set nocompatible
filetype on
filetype plugin on
filetype indent on

set cursorline
set cursorcolumn

set shiftwidth=2
set tabstop=2
set expandtab

set scrolloff=999
set showcmd
set showmode
set showmatch
set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99

set omnifunc=syntaxcomplete#Complete

if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:everforest_background = 'hard'

colorscheme everforest
