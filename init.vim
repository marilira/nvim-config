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
set autoread
set termguicolors
filetype on
filetype plugin on
filetype indent on



" -------------------->
" Key maps
" -------------------->
let mapleader="\<space>"

nmap od o<esc>k
nmap oa O<esc>j
nmap oo A<cr>

inoremap kj <esc>

nnoremap <leader>s :w<cr>:source %<cr>
nnoremap <leader>vc :edit ~\AppData\Local\nvim\coc-settings.json<cr>
nnoremap <leader>ve :edit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>



" -------------------->
" Sources
" -------------------->
source ~\AppData\Local\nvim\plugins.vim
