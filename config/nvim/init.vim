" to profile vim startup
" vim --startuptime vim.log asdf.js
" less vim.log
" cat vim.log | sort -k 2
" time vim +qa
"
" TODO LIST:

set expandtab
set number
set hlsearch
set noswapfile
set cc=80 "80 column border
syntax on "syntax highlighting

inoremap jk <Esc>

let data_dir = has('.config/nvim') ? stdpath('data') . '/site' : '~/.config/nvim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin() 
    Plug 'jiangmiao/auto-pairs'
call plug#end()
