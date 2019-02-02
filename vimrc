set t_vb=
set t_Co=256
set nocompatible
set incsearch
set ignorecase
set smartcase
set tagrelative
set listchars=tab:>\ ,eol:\|
set number
set background=dark
set nohlsearch
set laststatus=2
set splitbelow
set splitright
set title
set mouse+=a
set showcmd
set ruler
set rulerformat=%c%V,%l%4p%%
set visualbell
set backspace=indent,eol,start
set matchpairs=(:),{:},[:],<:>
set nrformats=
set tabstop=4
set shiftwidth=4
set smarttab
set shiftround
set expandtab
set fileformats=unix,dos
set nowritebackup
set nobackup
set noswapfile
set history=1024
set wildmode=list:longest
set nowildmenu
set iminsert=0
set noimcmdline
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp,utf-8,ascii,euc-jp,cp932,utf-32le,utf-32be,utf-16le,utf-16be,latin1
set termencoding=utf-8
set ambiwidth=double

colorscheme molokai

filetype plugin indent on
syntax on
if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
endif
