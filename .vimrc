set number relativenumber
set linebreak
set wrap
set nohlsearch
syntax on
let python_highlight_all=1
set nocompatible
set encoding=utf-8
filetype plugin on
set path+=**
set wildmenu
set clipboard=unnamed
let g:python3_host_prog='/usr/bin/python3.6'
let mapleader =","

call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/indentpython.vim'
call plug#end()

map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
map <leader>o :setlocal spell! spelllang=en_gb<CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
