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
set smartcase

"automatic writing
set autowrite
set autoread

"codification
set encoding=UTF-8
set textwidth=80

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
color retrobox

"-----------------------------------------------------------------------------
"MAPs
"-----------------------------------------------------------------------------

"NORMAL MODE
nnoremap -ev :vsplit $MYVIMRC<cr>
nnoremap -sv :source $MYVIMRC<cr>
nnoremap -<space> viw<esc>a"<esc>hbi"<esc>lel
nnoremap -w :w<cr>
nnoremap -q :q<cr>
nnoremap -d dd
nnoremap -r :AirlineTheme<space>
nnoremap -t :NERDTreeToggle<cr>
nnoremap <space> viw

"window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-x> <c-w><c-x>
nnoremap vr :vertical resize<space>

"buffers
nnoremap nn :bnext<cr>
nnoremap np :bprevious<cr>
nnoremap nd :bdelete<cr>
nnoremap nls :ls<cr>

" move
nnoremap ge G
nnoremap gl $
nnoremap gh 0

"INSERTION MODE
inoremap jk <esc>
inoremap <c-u> <esc>gUiwea
inoremap <c-l> <esc>la
inoremap <c-b> <esc>ba
inoremap <c-o> <esc>O
inoremap <c-d> <esc>ddi


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
" let g:airline_theme = 'serene'
let g:airline_theme = 'zenburn'


"-----------------------------------------------------------------------------
"Functions
"-----------------------------------------------------------------------------

function! MyColorScheme() abort
    let cs = get(g:, 'colors_name', '')
    if cs ==# "retrobox"
        let g:airline_theme='zenburn'
        AirlineRefresh
    elseif cs ==# "wildcharm"
        let g:airline_theme='serene'
        AirlineRefresh
    endif
endfunction 

augroup MyColorScheme
    autocmd!
    autocmd ColorScheme * call MyColorScheme()
augroup END


"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
