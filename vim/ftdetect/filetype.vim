" plist
autocmd BufRead,BufNewFile *.plist call s:check_plist()
function! s:check_plist()
	let s:line = getline(1)
	if s:line =~ '<?\s*xml.*?>'
		setfiletype xml
	elseif s:line =~ 'bplist00'
		setfiletype bplist
	else
		setfiletype plist
	endif
endfunction

" strings, pbxproj
autocmd BufRead,BufNewFile *.strings,*.pbxproj setfiletype plist

" objc
autocmd BufRead,BufNewFile *.m set filetype=objc

" cocoapods
autocmd BufRead,BufNewFile *.podspec,Podfile setfiletype ruby

" json
" by default, *.json file is defined as javascript.
" to override default setting, use set filetype= instaed of
" setfiletype command.
autocmd BufRead,BufNewFile *.json set filetype=json

" cython
autocmd BufRead,BufNewFile *.pyd set filetype=pyrex
