" Auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

source ~/AppData/Local/nvim/plugins/auto-pairs.vim
source ~/AppData/Local/nvim/plugins/polyglot.vim
source ~/AppData/Local/nvim/plugins/nerdtree.vim
source ~/AppData/Local/nvim/plugins/coc.vim
source ~/AppData/Local/nvim/plugins/airline.vim
source ~/AppData/Local/nvim/plugins/icons.vim

call plug#end()

" Auto install missing plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif