call plug#begin()
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'kien/ctrlp.vim' 
	"colorschemes
	
call plug#end()

set nocompatible
filetype plugin on

set path+=**
set wildmenu

set nu 
set tabstop=4 
set shiftwidth=4
set autoindent
set hlsearch
set incsearch

set listchars=eol:┐,tab:▹\ 
set list

set fileencodings=utf8,cp1251

set t_Co=256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
colorscheme lyla

nmap <F2> :tabnext<CR>
nmap <F3> :tabprevious<CR>
nmap <F4> :tabclose<CR>

nmap <C-F2> :colorscheme molokai<CR>
silent! nmap <C-n> :NERDTreeToggle<CR>