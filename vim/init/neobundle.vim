if has('vim_starting')
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim
endif

call neobundle#begin()

NeoBundleFetch 'Shougo/neobundle.vim'

let s:plugin_path = escape(expand('<sfile>:p:h:h'), '\')
call neobundle#load_toml(s:plugin_path.'/bundle.toml')

call neobundle#end()

NeoBundleCheck

