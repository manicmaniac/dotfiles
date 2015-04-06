if executable('js-beautify')
	setlocal formatprg=js-beautify
elseif executable('uglifyjs')
	setlocal formatprg=uglifyjs\ --beautify\ --comments\ all
endif

