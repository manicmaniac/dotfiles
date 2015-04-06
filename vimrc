set nocompatible

" initialize user settings
runtime! init/*.vim
runtime! init/plugins/*.vim

" setting up colorscheme
if !has('gui_running')
	try
		colorscheme molokai
	catch
	endtry
endif

" finalize
filetype plugin indent on
syntax on

if filereadable($HOME . "/.vimrc.local")
	source ~/.vimrc.local
endif

