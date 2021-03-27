" vim-plug Settings

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
" Plug 'nanotech/jellybeans.vim'
Plug 'dracula/vim', {'as': 'dracula'}

call plug#end()

set nocompatible
set encoding=utf-8
set relativenumber
set number
set noswapfile
set clipboard^=unnamedplus
set mouse=a
syntax on

" Colorschemes
let g:dracula_italic = 1
colorscheme dracula
highlight Normal ctermbg=None
" colorscheme jellybeans
" let g:jellybeans_use_term_italics = 1

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" Set vim as man page viewer
let $PAGER=''
