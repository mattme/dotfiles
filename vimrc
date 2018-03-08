" GENERAL

set history=500 " How many lines of history VIM has to remember
filetype plugin on
filetype indent on
set autoread " Set to auto read when a file is changed from the outside
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8
set ffs=unix,dos,mac " Use Unix as the standard file type

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" VIM-PLUG

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'lifepillar/vim-solarized8'
call plug#end()

" USER INTERFACE

set cmdheight=1 " Height of the command bar
set showmatch " Show matching brackets when text indicator is over them
set number " Set numbering
set showtabline=1 " Remove the tab line at the top
set laststatus=2 " Always show the status line
set statusline=\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c " Format the status line

" COLORS AND FONTS

set termguicolors " Enable more colors
syntax enable " Enable syntax highlighting
colorscheme solarized8
set background=light

" SEARCH

set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases 
set hlsearch " Highlight search results
set incsearch " Incremental search

" NO BACKUP

set nobackup
set nowb
set noswapfile

" TEXT, TAB AND INDENT

set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs

" 1 tab == X spaces
set shiftwidth=4
set tabstop=4

" Linebreak on X characters
set lbr
set tw=80

" Indenting & wrapping
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
