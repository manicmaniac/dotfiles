if !exists('g:quickrun_config')
	let g:quickrun_config = {}
endif

let g:quickrun_config.c = g:quickrun#default_config.c

let g:quickrun_config['c/gcc'] = {
            \ 'command': 'gcc',
            \ 'exec': ['%c '.$CFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
            \ 'tempfile': '%{tempname()}.c',
            \ 'hook/sweep/files': '%S:p:r',
            \ }

let g:quickrun_config['c/clang'] = {
            \ 'command': 'gcc',
            \ 'exec': ['%c '.$CFLAGS.' %o %s -o %s:p:r '.$LDFLAGS, '%s:p:r %a'],
            \ 'tempfile': '%{tempname()}.c',
            \ 'hook/sweep/files': '%S:p:r',
            \ }

let g:quickrun_config.coconut = {
            \ 'command': 'coconut',
            \ 'exec': ['%c -nqr %s'],
            \ }

let g:quickrun_config.make = {
			\ 'exec': ['%c -n -f %s'],
			\ }

let g:quickrun_config.objc = {
			\ 'command': 'clang',
			\ 'exec': ['%c %s -o %s:p:r -framework Foundation', '%s:p:r %a'],
			\ 'tempfile': '%{tempname()}.m',
			\ 'hook/sweep/files': '%S:p:r',
			\ }

let g:quickrun_config.applescript = {
			\ 'command': 'osascript',
			\ }

let g:quickrun_config.tcl = {
            \ 'command': 'tclsh',
            \ }

let g:quickrun_config.pyrex = {
			\ 'command': 'python',
			\ 'exec': ['%c -m Cython.Build.BuildExecutable %s'],
			\ 'tempfile': '%{tempname()}.pyx',
			\ 'hook/sweep/files': ['%S:p:r', '%S:p:r.o', '%S:p:r.c'],
			\ }

let g:quickrun_config.yaml = {
			\ 'command': 'ruby',
			\ 'exec': ['%c -r yaml -r pp -e "pp YAML.load(ARGF.read())" %s'],
			\ }

let g:quickrun_config.jade = {
			\ 'exec': ['cat %s | %c --pretty '],
			\ }

let g:quickrun_config.xslt = {
			\ 'command': 'xsltproc',
			\ 'exec': ['%c %s %a'],
			\ }

let g:quickrun_config._ = {'runner': 'vimproc', 'runner/vimproc/updatetime': 10}

if &filetype != 'vim'
	nnoremap <leader>R :call quickrun#compile()<CR>
endif

function! quickrun#compile()
	if &filetype == 'scala'
		QuickRun -exec 'scalac %o %s' -exec 'scala %s:t:r %a'
					\ -hook/output_encode/encoding '&termencoding'
					\ -hook/sweep/files ['%S:p:r.class', '%S:p:r$.class']
	elseif &filetype == 'javascript'
		QuickRun -exec 'uglifyjs %o %s --mangle --wrap'
					\ -outputter/buffer/name '[quickrun compile]'
					\ -outputter/buffer/filetype 'javascript'
	elseif &filetype == 'coffee'
		QuickRun -exec '%c -p %o %s'
					\ -outputter/buffer/name '[quickrun compile]'
					\ -outputter/buffer/filetype 'javascript'
	elseif &filetype == 'markdown'
		QuickRun -exec 'pandoc -s %s'
					\ -outputter/buffer/name '[quickrun compile]'
					\ -outputter/buffer/filetype 'xhtml'
	else
		echo 'Cannot find out how to compile this file.'
	endif
endfunction

cabbrev qr QuickRun -args

