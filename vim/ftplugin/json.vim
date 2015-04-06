if executable('jsonlint')
	setlocal formatprg=jsonlint
elseif executable('jq')
	setlocal formatprg=jq\ .
elseif executable('node')
	setlocal formatprg=node\ -e\ 'process.stdin.on(\"data\",function(c){console.log(JSON.stringify(JSON.parse(c.toString()),null,2)+\"\\n\");});'
elseif executable('ruby')
	setlocal formatprg=ruby\ -rjson\ -e\ 'JSON.pretty_generate(JSON.parse($<.read))'
elseif executable('python')
	setlocal formatprg=python\ -m\ json.tool
endif

