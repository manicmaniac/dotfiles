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

" fastlane
autocmd BufRead,BufNewFile Appfile,Fastfile,Scanfile,Snapfile setfiletype ruby

" json
" by default, *.json file is defined as javascript.
" to override default setting, use set filetype= instaed of
" setfiletype command.
autocmd BufRead,BufNewFile *.json set filetype=json

" cython
autocmd BufRead,BufNewFile *.pyd set filetype=pyrex

" muttrc
autocmd BufRead,BufNewFile *.mutt set filetype=muttrc

" jinja2
autocmd BufRead,BufNewFile *.jinja2 set filetype=htmldjango

" offlineimap
autocmd BufRead,BufNewFile *.offlineimaprc set filetype=dosini

" applescript
autocmd BufRead,BufNewFile *.applescript set filetype=applescript

" coconut
autocmd BufRead,BufNewFile *.coco set filetype=coconut

" jenkins
autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy

" applescript
autocmd BufRead,BufNewFile *.applescript set filetype=applescript
