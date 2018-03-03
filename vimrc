""" GENERAL

    " How many lines of history VIM has to remember
    set history=500

    " Enable filetype plugins
    filetype plugin on
    filetype indent on

    " Set to auto read when a file is changed from the outside
    set autoread

    " No sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500

    " Set utf8 as standard encoding and en_US as the standard language
    set encoding=utf8

    " Use Unix as the standard file type
    set ffs=unix,dos,mac

""" USER INTERFACE

    " Height of the command bar
    set cmdheight=1
    
    " Show matching brackets when text indicator is over them
    set showmatch 

    " How many tenths of a second to blink when matching brackets
    set mat=2

    " Set numbering
    set number

    " Remove the tab line at the top
    set showtabline=1

    " Always show the status line
    set laststatus=2

    " Format the status line
    set statusline=\ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

""" COLORS AND FONTS

    " Enable syntax highlighting
    syntax enable 
    "colorscheme delek
    set background=dark

""" SEARCH

    " Ignore case when searching
    set ignorecase
    
    " When searching try to be smart about cases 
    set smartcase

    " Highlight search results
    set hlsearch

    " Incremental search
    set incsearch 

""" BACKUP

    " Turn backup off
    set nobackup
    set nowb
    set noswapfile

""" TEXT, TAB AND INDENT

    " Use spaces instead of tabs
    set expandtab

    " Be smart when using tabs
    set smarttab

    " 1 tab == X spaces
    set shiftwidth=4
    set tabstop=4

    " Linebreak on X characters
    set lbr
    set tw=500
    
    " Indenting & wrapping
    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines

""" VIM-PLUG
call plug#begin('~/.vim/plugged')

    " Insert plugins here
    Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
