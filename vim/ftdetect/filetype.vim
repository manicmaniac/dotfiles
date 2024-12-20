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
autocmd BufRead,BufNewFile *.strings,*.pbxproj set filetype=plist nospell

" objc
autocmd BufRead,BufNewFile *.m set filetype=objc

" cocoapods
autocmd BufRead,BufNewFile Dangerfile,Fastfile,Gymfile,Matchfile,Podfile,Scanfile,Guardfile,*.podspec setfiletype ruby

" json
" by default, *.json file is defined as javascript.
" to override default setting, use set filetype= instaed of
" setfiletype command.
autocmd BufRead,BufNewFile *.json,*.code-workspace set filetype=json
autocmd BufRead,BufNewFile Package.resolved set filetype=json nospell

" cython
autocmd BufRead,BufNewFile *.pyd set filetype=pyrex

" muttrc
autocmd BufRead,BufNewFile *.mutt* set filetype=muttrc

" jinja2
autocmd BufRead,BufNewFile *.jinja2 set filetype=htmldjango

" offlineimap
autocmd BufRead,BufNewFile *.offlineimaprc set filetype=dosini

" applescript
autocmd BufRead,BufNewFile *.applescript set filetype=applescript

" tbd
autocmd BufRead,BufNewFile *.tbd set filetype=yaml nospell

" terraform
autocmd BufRead,BufNewFile *.hcl,*.tf packadd! vim-terraform | set filetype=terraform nospell

" direnv
autocmd BufRead,BufNewFile .envrc set filetype=bash

" xcconfig
autocmd BufRead,BufNewFile *.xcconfig packadd! xcconfig.vim | set filetype=xcconfig

" ruby
autocmd BufRead,BufNewFile .Guardfile,.guardrc,Guardfile set filetype=ruby
