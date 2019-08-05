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
let mapleader =","
let g:python3_host_prog='/usr/bin/python3.6'

call plug#begin()
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
call plug#end()

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_uk<CR>

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " suppress the annoying 'match x of y', 'The only match' and 'Pattern not found messages
    set shortmess+=c

    " CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
    inoremap <c-c> <ESC>

    autocmd BufEnter * call ncm2#enable_for_buffer()

    set completeopt=noinsert,menuone,noselect

" folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

