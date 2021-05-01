set t_vb=
set t_Co=256
set nocompatible
set incsearch
set ignorecase
set smartcase
set tagrelative
set tags+=.git/tags
set listchars=tab:>\ ,eol:\|
set number
set background=dark
set nohlsearch
set spell
set spelllang=en,cjk
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
set fileencodings=ucs-bom,utf-8,iso-2022-jp,ascii,euc-jp,cp932,utf-32le,utf-32be,utf-16le,utf-16be,latin1
set termencoding=utf-8
set ambiwidth=double
set modeline
set modelines=2
set splitright
set grepprg=ag\ --vimgrep

let g:netrw_browsex_viewer = 'open'
let g:netrw_liststyle = 3

let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
            \ 'runner': 'job',
            \ }
            " 'outputter': 'quickfix'


if executable('ruby')
    let g:quickrun_config.yaml = {
                \ 'command': 'ruby',
                \ 'cmdopt': '-rjson -ryaml -e "puts JSON.pretty_generate(YAML.load(ARGF.read))"',
                \ 'exec': '%c %o %s',
                \ 'outputter/buffer/filetype': 'json'
                \ }
endif

if executable('guile')
    let g:quickrun_config.scheme = {
          \ 'command': 'guile',
          \ 'cmdopt': '--no-auto-compile',
          \ 'exec': '%c %o %s:p %a'
          \ }
endif

if executable('jq')
    let g:quickrun_config.jq = {
                \ 'command': 'jq',
                \ 'cmdopt': '-n -f',
                \ 'exec': '%c %o %s'
                \ }
endif

if executable('clang')
    let g:quickrun_config.asm = {
                \   'command': 'clang',
                \   'exec': ['%c '.$ASFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
                \   'tempfile': '%{tempname()}.s',
                \   'hook/sweep/files': '%S:p:r'
                \ }
    let g:quickrun_config.c = {
                \   'command': 'clang',
                \   'exec': ['%c '.$CFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
                \   'tempfile': '%{tempname()}.c',
                \   'hook/sweep/files': '%S:p:r'
                \ }
    if executable('xcrun')
        let s:sdk_path = trim(system('xcrun --show-sdk-path'))
        let s:objc_cmdopt = join([
                    \   '-I'.s:sdk_path.'/usr/include',
                    \   '-F'.s:sdk_path.'/System/Library/Frameworks',
                    \   '-framework Foundation',
                    \   '-include Foundation/Foundation.h',
                    \   '-fobjc-arc',
                    \   '-fmodules',
                    \ ])
        let g:quickrun_config.objc = {
                    \   'command': 'clang',
                    \   'cmdopt': s:objc_cmdopt.' -ObjC',
                    \   'exec': ['%c '.$CFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
                    \   'tempfile': '%{tempname()}.m',
                    \   'hook/sweep/files': '%S:p:r'
                    \ }
        let g:quickrun_config.objcpp = {
                    \   'command': 'clang',
                    \   'cmdopt': s:objc_cmdopt.' -ObjC++',
                    \   'exec': ['%c '.$CFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
                    \   'tempfile': '%{tempname()}.mm',
                    \   'hook/sweep/files': '%S:p:r'
                    \ }
    endif
    let g:quickrun_config['cpp'] = {
                \   'command': 'clang++',
                \   'exec': ['%c '.$CXXFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
                \   'tempfile': '%{tempname()}.cpp',
                \   'hook/sweep/files': ['%S:p:r'],
                \ }
    let g:quickrun_config['clojure'] = {
                \   'command': '/Users/rito/Projects/manicmaniac/FerretExample/ferret/bin/ferret',
                \   'cmdopt': '--silent',
                \   'exec': ['%c %o -i %s -o %s:p:r.mm', 'clang -std=c++11 %s:p:r.mm -lc++ -framework Foundation -o %s:p:r', '%s:p:r %a'],
                \   'tempfile': '%{substitute(tempname(), ''/\(\d\+\)$'', ''ferret\1'', '''')}.clj',
                \   'hook/sweep/files': ['%S:p:r'],
                \ }
endif
if executable('scala')
    let g:quickrun_config['scala'] = {
                \   'cmdopt': '-deprecation'
                \ }
endif
if executable('gforth')
    let g:quickrun_config['forth'] = {
                \   'command': 'gforth',
                \   'exec': ['%c %o %s -e bye']
                \ }
endif

if executable('pyls')
    autocmd User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
endif
if executable('/opt/local/libexec/llvm-7.0/bin/clangd')
    autocmd User lsp_setup call lsp#register_server({
                \ 'name': 'clangd',
                \ 'cmd': {server_info->['/opt/local/libexec/llvm-7.0/bin/clangd']},
                \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                \ })
endif

nnoremap <Space> <C-f>
nnoremap <Leader>q :cclose<CR>

colorscheme molokai

filetype plugin indent on
syntax on

autocmd FileType * if &l:omnifunc == '' | setlocal omnifunc=syntaxcomplete#Complete | endif

packadd! matchit

if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
endif
