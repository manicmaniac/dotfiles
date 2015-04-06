execute 'iabbrev <buffer> #! <?xml version="1.0" encoding="'.(&fileencoding != '' ? &fileencoding : 'UTF-8').'" ?>'

if executable('xmllint')
	setlocal formatprg=xmllint\ --format\ -
endif

