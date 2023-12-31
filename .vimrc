set encoding=UTF-8

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

set backspace=indent,eol,start

set scrolloff=999
set showcmd
set showmode
set showmatch
set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set rtp+=/opt/homebrew/opt/fzf

set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99

set omnifunc=syntaxcomplete#Complete

autocmd FileType make set tabstop=2 shiftwidth=2 softtabstop=0 noexpandtab

if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:everforest_background = 'hard'

packadd! everforest
colorscheme everforest

packadd YouCompleteMe
let g:ycm_semantic_triggers =  {
  \   'c,cpp,objc': [ 're!\w{3}', '_' ],
  \ }
let g:ycm_add_preview_to_completeopt="popup"

packadd vim-clang-format
let g:c_syntax_for_h = 1
let g:clang_format#detect_style_file = 1
autocmd FileType c ClangFormatAutoEnable

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

packadd vim-devicons

packadd nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeMinimalUI = 1

set autowriteall

packadd auto-pairs

packadd vim-airline

nnoremap th gT
nnoremap tl gt

packadd fzf.vim

nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <C-v> :Files<CR>
