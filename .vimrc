let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin() 
    Plug 'jiangmiao/auto-pairs'
call plug#end()

set number "show line numbers

set history=500 "Sets how many lines of history VIM has to remember

set expandtab  "Use spaces instead of tabs

"1 tab == 4spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
"escape insert mode with jk
imap jk <Esc>

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" show line number when opening directory
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

set hlsearch
