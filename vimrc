"-----------------------------------------------------------------------------
"GLOBAL SETs
"-----------------------------------------------------------------------------

set shortmess+=I
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number numberwidth=7
set relativenumber
set mouse=n
set incsearch
set encoding=utf-8
set textwidth=79
set cursorline
set showtabline=0
set ruler
set rulerformat=%15(%p%%\ %l/%L\ %c%V%)
set laststatus=2
set autowrite
set hlsearch incsearch
set background=dark
color retrobox


"-----------------------------------------------------------------------------
"MAPS
"-----------------------------------------------------------------------------

let mapleader="-"

"NORMAL
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader><space> viw<esc>a"<esc>hbi"<esc>lel
nnoremap <space> viw

"file explorer
nnoremap <f2> :Vex<cr>:vertical resize -40<cr>

"windows
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-x> <c-w><c-x>

nnoremap vr :vertical resize<space>

"buffers
nnoremap bn :bnext<cr>
nnoremap bp :bprevious<cr>
nnoremap bd :bdelete<cr>
nnoremap bls :ls<cr>

"delete
nnoremap dge dG
nnoremap dgl d$
nnoremap dgh a<space><esc>d0

"move go
nnoremap ge G
nnoremap gl $
nnoremap gh 0

"copy and paste
nnoremap <leader>c "ayy
nnoremap <leader>v "ap

"INSERTION
inoremap jk <esc>
inoremap <c-u> <esc>gUiwea
inoremap <c-l> <esc>la
inoremap <c-b> <esc>ba
inoremap <c-o> <esc>O
inoremap <c-d> <esc>ddi

"inoremap ` ``<Left>

"VISUAL
vmap \ ~


"-----------------------------------------------------------------------------
"Plugins
"-----------------------------------------------------------------------------
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'

call plug#end()

"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
