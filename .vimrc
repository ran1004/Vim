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
set guicursor+=a:blinkon0           
set guifont=Inziu_Iosevka_Slab_SC:h12
					

let &t_ut=''
set tabstop=4
set scrolloff=5
set softtabstop=4
set linebreak
set number
set showcmd
set wildmenu
set wrap
set noswapfile
set hlsearch
exec "nohlsearch"
set incsearch
set smartcase
set autoindent
set ignorecase
set noeb
set nocompatible              " be iMproved, required
filetype off                  " required

" ctags
set tags+=~/.vim/tags/cpp
set tags+=./tags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

syntax on
set t_Co=256
colorscheme jummidark
let g:airline_theme="raven"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'

Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
nmap <Leader>1 :Goyo<CR>
xmap <Leader>1 :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let g:goyo_width = 80
let g:goyo_height = 80
let g:goyo_linenr = 0

Plugin 'scrooloose/nerdtree'
let g:tagbar_width=40


Plugin 'majutsushi/tagbar'
nmap <Leader>2 :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_width = 50
"autocmd VimEnter * nested :TagbarOpen

Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'preservim/nerdcommenter'

let g:mkdp_path_to_chrome="firefox"

Plugin 'godlygeek/tabular'
let g:mkdp_auto_close=0

Plugin 'tpope/vim-surround'
Plugin 'jcherven/jummidark.vim'

Plugin 'vim-scripts/OmniCppComplete'
 let OmniCpp_NamespaceSearch = 1
 let OmniCpp_GlobalScopeSearch = 1
 let OmniCpp_ShowAccess = 1
 let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
 let OmniCpp_MayCompleteDot = 1 " autocomplete after .
 let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
 let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
 let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
 au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
 set completeopt=menuone,menu


Plugin 'Chiel92/vim-autoformat' 
noremap <Leader>3 :Autoformat<CR>

call vundle#end()

syntax enable
map <C-n> :NERDTreeToggle<CR>


nnoremap <F5>   <Esc>:w<CR>:!g++ -std=c++11 % -o ./a.out && ./a.out<CR>
nnoremap <F7>   <Esc>:w<CR>:!g++ -std=c++11 %<CR>
nnoremap <C-F5> <Esc>:w<CR>:!g++ -std=c++11 -g % -o ./a.out && gdb ./a.out<CR>

