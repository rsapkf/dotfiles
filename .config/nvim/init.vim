" ========================== "
" vim-plug Settings
" ========================== "

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'dense-analysis/ale'
" Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neomake/neomake'
" Plug 'Shougo/deoplete.nvim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'

" Essentials
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'

" LaTeX
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'ctrlpvim/ctrlp.vim'

" HTML/CSS/JS
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'chriskempson/base16-vim' (doesn't work on urxvt)
" Plug 'nanotech/jellybeans.vim'
" Plug 'dylanaraps/wal'

" Initialize plugin system
call plug#end()

" ================================ "
" General Settings
" ================================ "

" Map <leader> to <space>(default="\")
let mapleader = " "
let maplocalleader = "\\"

" General
inoremap jk <ESC>
set nocompatible
set colorcolumn=80
set encoding=utf-8
set number
set relativenumber
set noswapfile
syntax on
set clipboard^=unnamedplus
set mouse=a

set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

" Highlight invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" Disable arrows keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Disable Escape key
" inoremap <esc> <nop>

" Auto save on losing focus
au FocusLost * :wa

" search
set ignorecase
set smartcase
nnoremap / /\v
vnoremap / /\v
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Wrap
" set wrap
" set textwidth=79
" set formatoptions=qrn1
" set colorcolumn=85

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" splits
set splitbelow splitright

" Wildmenu auto-completion
set wildmenu
set wildmode=list:longest

" set nvim as man pager viewer
" let $PAGER=''

" Spellcheck
" setlocal spell
" set spelllang=en_us
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" =============================================== "
" Mappings
" =============================================== "

" Enable movement by screen line instead of movement by line for j, k
nnoremap j gj
nnoremap k gk

" Toggle wrap
nnoremap <leader>z :set wrap!<CR>

" Toggle spellcheck
nnoremap <leader>s :set spell!<CR>

" vim-plug
nnoremap <leader>p :PlugInstall<CR>
nnoremap <leader>u :PlugUpdate<CR>

" ALE
nnoremap <leader>a :ALEToggle<CR>

" Splits
" Open a new vertical split and switch over
nnoremap <leader>w <C-w>v<C-w>l 
" Open a new horizontal split and switch over
nnoremap <leader>q <C-w>s<C-w>j
" Navigate around splits with <C-[hjkl]>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Resize splits
nnoremap <silent> <C-Left> :vertical resize +5<CR>
nnoremap <silent> <C-Right> :vertical resize -5<CR>
nnoremap <silent> <C-Up> :resize +5<CR>
nnoremap <silent> <C-Down> :resize -5<CR>
" Change splits from horizontal to vertical and vice versa
noremap <leader>th <C-w>t<C-w>H
noremap <leader>tk <C-w>t<C-w>K

" Open a terminal in a vertical split
nnoremap <leader>tt :vnew term://zsh<CR>

" Obscure text instantaneously
noremap <leader>i ggg?G

" =============================================== "
" Configure plugins
" =============================================== "

" Colorschemes
" jellybeans.vim
" colorscheme jellybeans
" enable italics in terminal Vim
" let g:jellybeans_use_term_italics = 1

" dracula.vim
colorscheme dracula

" pywal
" colorscheme wal
" set background=dark

" base16-vim (doesn't work on urxvt)
set termguicolors
" let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme base16-default-dark

" enable italics(this line must be placed after colorscheme)
highlight Comment cterm=italic


" coc.nvim
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" fzf.vim
nnoremap ; :Buffers<CR>
nnoremap <Leader>p :Files<CR>
nnoremap <Leader>r :Tags<CR>


" vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'


" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-q> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Automatically open NERDTree when nvim starts
" autocmd vimenter * NERDTree
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" NERD Commenter
filetype plugin on
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1


" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0


" tex-conceal.vim
set conceallevel=1
let g:tex_conceal='abdmg'


" UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" stevelosh vimrc

" Uppercase current word
inoremap <c-u> <esc>gUiwi
nnoremap <c-u> gUiw

" Wrap current word in quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Wrap current visually selected text in quotes
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quick editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>ef :vsplit ~/.config/fish/config.fish<cr>
nnoremap <leader>em :vsplit ~/.mutt/muttrc<cr>
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>

" Abbreviations
iabbrev @@    hi@example.org
iabbrev ssig -- <cr>John Doe<cr>hi@example.org
iabbrev ccopy Copyright 2019 John Doe, all rights reserved.

" Autocommands
" Turn off line wrapping for HTML files
autocmd BufNewFile,BufRead *.html setlocal nowrap

" Operator-pending Mappings
" change text in next parenthesis
onoremap in( :<c-u>normal! f(vi(<cr>
" change text in previous parenthesis
onoremap il( :<c-u>normal! F)vi(<cr>
