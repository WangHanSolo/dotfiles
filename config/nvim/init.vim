" to profile vim startup
" vim --startuptime vim.log asdf.js
" less vim.log
" cat vim.log | sort -k 2
" time vim +qa
"
" TODO LIST:
"
let mapleader = "," " map leader to comma

set expandtab
set tabstop=4
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
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

" 
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0) 

" fzf mappings
nnoremap <Leader>f :GitFiles<cr>
nnoremap <Leader>g :Rg<cr>
nnoremap <Leader>b :Buffers<cr>
" nnoremap <C-f> :Files<cr>
nnoremap <Leader>l :Lines<cr>

