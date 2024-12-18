" 0 (not listed in :options)
set t_vb=
set t_Co=256

" 1 important
set nocompatible
" set cpo=aABceFs
" set noim
" set nopaste
" set pt=
" set runtimepath=
" set helpfile

" 2 moving around, searching and patterns
" set whichwrap=b,s
" set startofline
" set paragraphs=IPLPPPQPP\ TPHPLIPpLpItpplpipbp
" set sections=SHNHH\ HUnhsh
" set path=.,/usr/include,,
" set cd=,,
" set noautochdir
" set wrapscan
set incsearch
" set magic
set ignorecase
set smartcase
" set casemap=internal,keepascii
" set maxmempattern=1000
" set define=^\\s*#\\s*define
" set include=^\\s*#\\s*include
" set includeexpr=

" 3 tags
set notagbsearch
" set taglength=0
set tags=$HOME/.tags,.git/tags
set tagrelative
" set notagstack
" set noshowfulltag
" set cscopeprg=cscope
" set nocscopetag
" set cscopetagorder=0
" set nocscopeverbose
" set cscopepathcomp=0
" set cscopequickfix=
" set nocscoperelative

" 4 displaying text
" set scroll=9
" set scrolloff=0
" set wrap
" set nolinebreak
" set breakat=\ \	!@*-+;:,./?
" set showbreak=
" set sidescroll=0
" set sidescrolloff=0
" set display=
" set fillchars=vert:\|,fold:-
" set cmdheight=1
" set columns=213
" set lines=58
" set window=57
" set nolazyredraw
" set redrawtime=2000
" set writedelay=0
set nolist
set listchars=tab:>\ ,eol:\|
set number
" set norelativenumber
" set numberwidth=4
" set conceallevel=0
" set concealcursor=

" 5 syntax, highlighting and spelling
set background=dark
" set filetype=
" set syntax=
" set synmaxcol=3000
" set highlight=
set nohlsearch
" set nocursorcolumn
" set nocursorline
" set colorcolumn=
set spell
set spelloptions=camel
set spelllang=en,cjk
set spelloptions=camel
" set spellfile=
" set spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
" set spellsuggest=best
" set mkspellmem=460000,2000,500

" 6 multiple windows
set laststatus=2
" set statusline=
" set equalalways
" set eadirection=both
" set winheight=1
" set winminheight=1
" set nowinfixheight
" set nowinfixwidth
" set winwidth=20
" set winminwidth=1
" set helpheight=20
" set previewheight=12
" set nopreviewwindow
" set nohidden
" set switchbuf=
set splitbelow
set splitright
" set noscrollbind
" set scrollopt=ver,jump
" set nocursorbind

" 7 multiple tab pages
" set showtablines=1
" set tabpagemax=10
" set tabline=
" set guitablabel=
" set guitabtooltip=

" 8 terminal
" set term=xterm
" set ttytype=xterm
" set ttybuiltin
" set ttyfast
" set noweirdinvert
" set esckeys
" set scrolljump=1
" set ttyscroll=999
" set gcr&
set title
" set titlelen=85
" set titlestring=VIM\ \-\ %{getcwd()}
" set titleold=Thanks\ for\ flying\ Vim
" set icon
" set iconstring=

" 9 using the mouse
set mouse+=a
" set nomousefocus
" set mousehide
" set mousemodel=extend
" set mousetime=500
" set ttymouse=xterm2
" set mouseshape&

" 10 GUI
" set guifont=
" set guifontwide=
" set guioptions=eiM
" set toolbar=icons,tooltips
" set toolbariconsize=small
" set guiheadroom=50
" set guipty
" set langmenu=
" set menuitems=25
" set winaltkeys=menu
" set linespace=0
" set balloondelay=600
" set noballooneval
" set balloonexpr=

" 11 printing
" set printoptions=paper:a4
" set printdevice=
" set printexpr=&
" set printfont=courier
" set printheader=%<%f%h%m%=%N\ page
" set printencoding=
" set printmbcharset=
" set printmbfont=

" 12 messgages and info
" set noterse
" set shortmess=filnxtToO
set showcmd
" set showmode
set ruler
set rulerformat=%c%V,%l%4p%%
" set report=2
" set verbose=0
" set verbosefile=
" set more
" set noconfirm
" set noerrorbells
set visualbell
set helplang=ja,en

" 13 selecting text
" set selection=inclusive
" set selectmode=
" set clipboard=autoselect,exclude:cons\\\|linux
" set keymodel=

" 14 edinting text
" set undolevels=1000
" set undoreload=10000
" set nomodified
" set noreadonly
" set modifiable
" set textwidth=0
" set wrapmargin=0
set backspace=indent,eol,start
" set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
" set formatoptions=tcq
" set flp=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
" set formatexpr=
" set complete=.,w,b,u,t,i
" set completeopt=preview,menuone
" set pumheight=0
" set completefunc=
" set omnifunc=
" set dictinary=
" set thesaurus=
" set noinfercase
" set nodigraph
" set notildeop
" set operatorfunc=
" set noshowmatch
" set matchtime=5
set matchpairs=(:),{:},[:],<:>
" set joinspaces
set nrformats=

" 15 tabs and indenting
set tabstop=4
set shiftwidth=4
set smarttab
" set softtabtop=0
set shiftround
set expandtab
" set noautoindent
" set nosmartindent
" set nocindent
" set cinoptions=
" set cinkeys=0{,0},0),:,0#,!^F,o,O,e
" set cinwords=if,else,while,do,for,switch
" set indentexpr=
" set indk=0{,0},:,0#,!^F,o,O,e
" set nocopyindent
" set nopreserveindent
" set nolisp
" set lispwords=

" 16 folding
" set foldenable
" set foldlevel=0
" set foldlevelstart=-1
" set foldcolumn=0
" set foldtext=foldtext()
" set foldclose=
" set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
" set foldminlines=1
" set commentstring=/*%s*/
" set foldmethod=manual
" set foldexpr=0
" set foldignore=#
" set foldmarker={{{,}}}
" set foldnextmax=20

" 17 diff mode
" set nodiff
" set diffopt=filler
" set diffexpr=
" set patchexpr=

" 18 mapping
" set maxmapdepath=1000
" set remap
" set timeout
" set nottimeout
" set timeoutlen=1000
" set ttimeoutlen=-1

" 19 reading and writing files
" set modeline
" set modelines=5
" set nobinary
" set endofline
" set nobomb
" set fileformat=
set fileformats=unix,dos,mac
" set notextmode
" set textauto
" set write
set nowritebackup
set nobackup
" set backupskip=/tmp/*
" set backupcopy=auto
" set backupdir=
" set backupext=~
" set noautowrite
" set noautowriteall
" set nowriteany
" set noautoread
" set patchmode=
" set fsync
" set noshortname
" set cryptmethod=zip

" 20 the swap file
" set directory=$HOME/.vim/tmp/
set noswapfile
" set swapsync=fsync
" set updatecount=200
" set updatetime=2000
" set maxmem=3948098
" set maxmemtot=3948098

" 21 command line editing
set history=1024
" set wildchar=9
" set wildcharm=0
set wildmode=list:longest
" set suffixes=&
" set suffixesadd=
" set wildignore=
" set nowildignorecase
set nowildmenu
" set cedit=
" set cmdwinheight=7
" set noundofile
" set noundodir=.

" 22 executing external commands
set shell=/bin/bash\ -l\ -O\ expand_aliases
" set shellquote=
" set shellxquote=
" set shellxescape=
" set shellcmdflag=-c
" set shellredir=>%s\ 2>&1
set noshellslash
" set shelltemp
" set equalprg=
" set formatprg=
" set keywordprg=man
" set warn

" 23 running make and jumping to errors
" set errorfile=errors.err
set errorformat+=rspec\ %f:%l\ #\ %m
" set makeprg=make
" set shellpipe=2>&1\|\ tee
" set makeef=
" set gp=grep\ -n\ $*\ /dev/null
" set gfm=%f:%l:%m,%f:%l%m,%f\ \ %l%m

" 24 language specific
" set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=
" set isident=@,48-57,_,192-255
" set iskeyword=@,48-57,_,192-255
" set isprint=@,161-255
" set quoteescape=\\
" set norightleft
" set rightleftcmd=search
" set norevins
" set noallowrevins
" set aleph=224
" set nohkmap
" set nohkmapp
" set noaltkeymap
" set nofkmap
" set noarabic
" set arabicshape
" set notermbidi
" set keymap=
" set langmap=
" set noimdisable
set iminsert=0
set noimcmdline

" 25 multi-byte characters
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932,utf-16le,utf-16be,utf-32le,utf-32be,latin1
set termencoding=utf-8
" set charconvert=
" set nodelcombine
" set maxcombine=2
" set imactivatekey=
set ambiwidth=double

" 26 various
" set virtualedit=
" set eventignore=
" set loadplugins
" set noexrc
" set nosecure
" set nogdefault
" set noedcompatible
" set maxfuncdepth=100
" set sessionoptions=black,buffers,curdir,folds,help,options,tabpages,winsize
" set viewoptions=folds,options,cursor
" set viewdir=$HOME/.vim/view
" set viminfo='100,<50,s10,h
" set bufhidden=
" set buftype=
" set buflisted
" set debug=

