set nocompatible

" Fix security vuln.
set modelines=0

"---TAB STUFF---
" Soft tabs w/4 spaces per tab
set tabstop=4
set expandtab
" Tab changing via </>
set shiftwidth=4
" Amount of spaces removed via backspace
set softtabstop=4

"---MISC BEHAVIOR---
set encoding=utf-8

" autoscroll behavior
set scrolloff=3

" autotab on new line
set autoindent

" completion suggestions
set wildmenu
set wildmode=list:longest

" use visual cue instead of beep
set visualbell

" indicates fast terminal connection (good ole backwards compatibility)
set ttyfast

" row and column position
set ruler

" allow backspace over everything
set backspace=2

" last window always has a status line
set laststatus=2

" displays relative line numbers to cursor
set relativenumber

" saves undo history to file - maybe useful for buffers
set undofile

" custom command 'namespace'
let mapleader = ","

" case insensitive search unless uppercase character
set ignorecase
set smartcase

" always replace globally
set gdefault

" incremental searching
set incsearch

" show vertical line @ column 85
set colorcolumn=85

" Show invisible (tab and end-of-line) characters
set list
set listchars=tab:▸\ ,eol:¬
" controls color incase we need it
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

"
"
" Vim Plug stuff
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
call plug#end()
"
" Disabled arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move by screen line instead of file line
" maybe not necessary since word wrap is off?
nnoremap j gj
nnoremap k gk

" save on remapped ESC
" FocusLost detect doesn't really work in terminal
inoremap jj <Esc>:w<CR>

" create new vertical split and focus
nnoremap <leader>w <C-w>v<C-w>l

syntax enable
set background=light
colorscheme solarized
" persistent? highlighted search
set hlsearch
" remove highlighting via ',<space>'
nnoremap <leader><space> :noh<cr>

" match bracket pairs - jumps to them?
nnoremap <tab> %

" CtrlP plugin
nnoremap <leader>o :CtrlP<CR>

" lightline
let g:lightline={'colorscheme': 'solarized'}
