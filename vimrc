"-----------------------------------------------------------------------------
" GLOBAL SETs
"-----------------------------------------------------------------------------

set shortmess+=I
syntax on

" identation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" search
set incsearch
set smartcase

" automatic writing
set autowrite
set autoread

" codification
set encoding=UTF-8
set textwidth=80

" mouse
set mouse=n

" status bar
set rulerformat=%15(%p%%\ %l/%L\ %c%V%)
set showtabline=0
set ruler
set laststatus=2

" interface
set number numberwidth=6
set relativenumber
set cursorline
set background=dark
set termguicolors
color retrobox
" color wildcharm

"-----------------------------------------------------------------------------
" MAPs
"-----------------------------------------------------------------------------

" NORMAL MODE
nnoremap -ev :vsplit $MYVIMRC<cr>
nnoremap -sv :source $MYVIMRC<cr>
nnoremap - viw
nnoremap -<space> viw<esc>a"<esc>hbi"<esc>lel
nnoremap -w :w<cr>
nnoremap -q :q<cr>
nnoremap -x :x<cr>
nnoremap -d dd
nnoremap -t :NERDTreeToggle<cr>

" window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-x> <c-w><c-x>
nnoremap vr :vertical resize<space>

" move
nnoremap ge G
nnoremap gl $
nnoremap gh 0
nnoremap gn :bnext<cr>

" INSERTION MODE
inoremap jk <esc>
inoremap <c-u> <esc>gUiwea
inoremap <c-l> <esc>la
inoremap <c-b> <esc>ba
inoremap <c-o> <esc>O
inoremap <c-d> <esc>ddi

"-----------------------------------------------------------------------------
" PLUGs
"-----------------------------------------------------------------------------

call plug#begin()

" basic
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" file explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
