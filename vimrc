"-----------------------------------------------------------------------------
"GLOBAL SETs
"-----------------------------------------------------------------------------

set shortmess+=I
syntax on

"identation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

"search
set incsearch
set incsearch
set smartcase

"automatic writing
set autowrite
set autoread

"codification
set encoding=UTF-8
set textwidth=79

"mouse
set mouse=n

"status bar
"set rulerformat=%15(%p%%\ %l/%L\ %c%V%)
set showtabline=0
set ruler
set laststatus=2

"interface
set number numberwidth=7
set relativenumber
set cursorline
set background=dark
set termguicolors
color wildcharm

"-----------------------------------------------------------------------------
"MAPs
"-----------------------------------------------------------------------------

let mapleader="-"

"NORMAL MODE
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader><space> viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>t :AirlineTheme<space>
nnoremap <leader>b :NERDTreeToggle<cr>
nnoremap <space> viw

"file explorer
"nnoremap <f2> :Vex<cr>:vertical resize -40<cr>
"let g:netrw_liststyle=3
" nnoremap <f2> :NERDTreeToggle<CR>

"window
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

"move
nnoremap ge G
nnoremap gl $
nnoremap gh 0

"copy and paste
nnoremap <leader>c "ayy
nnoremap <leader>v "ap

"INSERTION MODE
inoremap jk <esc>
inoremap <c-u> <esc>gUiwea
inoremap <c-l> <esc>la
inoremap <c-b> <esc>ba
inoremap <c-o> <esc>O
inoremap <c-d> <esc>ddi

"VISUAL
vnoremap \ ~

"-----------------------------------------------------------------------------
"PLUGs
"-----------------------------------------------------------------------------

call plug#begin()

"basic
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

"file explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

"statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"-----------------------------------------------------------------------------
"AIRLINE
"-----------------------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme='atomic'

"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
