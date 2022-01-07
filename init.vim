" --------------------->
" General Settings
" --------------------->
set hidden " carregar novos arquivos e manter arquivos modificados na memória
set number relativenumber
set clipboard=unnamedplus
set inccommand=split
set mouse=a
syntax on
set tabstop=4 softtabstop=4 shiftwidth=4     
set expandtab        
set smarttab         
set smartindent
set incsearch
set ignorecase
set smartcase
set scrolloff=8
"set signcolumn=yes
"set cmdheight=2
set updatetime=100
set encoding=utf-8
set nobackup
set nowritebackup
set splitright splitbelow
set confirm
set title
set autoread
set autoindent
set termguicolors
filetype on
filetype plugin on
filetype indent on



" -------------------->
" Key maps
" -------------------->
let mapleader="\<space>"

" Split navigation
map <leader>wk <c-w>k
map <leader>wl <c-w>l
map <leader>wj <c-w>j
map <leader>wh <c-w>h
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-j> <c-w>j
"map <c-h> <c-w>h

" Move lines up and down
nnoremap <a-k> :m .-2<cr>==
nnoremap <a-j> :m .+1<cr>==

inoremap <a-k> <esc>:m .-2<cr>==
inoremap <a-j> <esc>:m .+1<cr>==

vnoremap <a-k> :m '<-2<cr>gv=gv
vnoremap <a-j> :m '>+1<cr>gv=gv

" Remap o
nmap oa O<esc>j " Create empty line above
nmap od o<esc>k " Create empty line below
nmap oo A<cr> " Actual o

" Remap Esc
inoremap kj <esc>
vnoremap kj <esc>

nnoremap <leader>; A;<esc>
nnoremap <leader>vc :edit ~\AppData\Local\nvim\coc-settings.json<cr>
nnoremap <leader>ve :edit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>



" -------------------->
" Sources
" -------------------->
source ~\AppData\Local\nvim\plugins.vim
