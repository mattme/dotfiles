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

" VIM-PLUG

call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'w0rp/ale' " See configuration of ALE below
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
set shiftwidth=2
set tabstop=2

" Linebreak on X characters
set lbr
set tw=80

" Indenting & wrapping
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Easier split navigation
" (Vim only; see below for extended functionality for Neovim)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NEOVIM SPECIFICS
if has ('nvim')
    :tnoremap <Esc> <C-\><C-n> " Exit terminal mode with ESC

    " Use CTRL+{h,j,k,l} to navigate windows from any mode
    tnoremap <C-h> <C-\><C-N><C-w>h
    tnoremap <C-j> <C-\><C-N><C-w>j
    tnoremap <C-k> <C-\><C-N><C-w>k
    tnoremap <C-l> <C-\><C-N><C-w>l
    inoremap <C-h> <C-\><C-N><C-w>h
    inoremap <C-j> <C-\><C-N><C-w>j
    inoremap <C-k> <C-\><C-N><C-w>k
    inoremap <C-l> <C-\><C-N><C-w>l
endif

" ALE CONFIGURATION
let g:ale_linters = {
\   'javascript': ['eslint'],
\ }
let g:ale_fixers = {
\   'javascript': ['prettier'],
\ }
let g:ale_fix_on_save = 1
