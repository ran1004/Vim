noremap j h
noremap i k
noremap k j
noremap K 5j
noremap I 5k
noremap L 5l
noremap I 5k
noremap J 5h
 
inoremap JJ <Esc>
inoremap jj <Esc>
noremap S :w<CR>
noremap Q :q<CR>
noremap s i
 
map SL :set splitright<CR>:vsplit<CR>
map SJ :set nosplitright<CR>:vsplit<CR>
let mapleader=" "
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j

               

let &t_ut=''
set tabstop=4
set number
set showcmd
set wildmenu
set wrap
set noswapfile
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set autoindent
set nocompatible	
set scrolloff=5
syntax on
set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=","

"set t_Co=256
"colorscheme slate
"let g:airline_theme="raven"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ycm-core/YouCompleteMe'


Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'majutsushi/tagbar'

Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'preservim/nerdcommenter'

let g:mkdp_path_to_chrome="firefox"

Plugin 'godlygeek/tabular'
let g:mkdp_auto_close=0

call vundle#end()

syntax enable
map <C-n> :NERDTreeToggle<CR>
