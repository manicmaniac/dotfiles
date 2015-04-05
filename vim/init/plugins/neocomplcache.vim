" disable AutoComplPop
let g:acp_enableAtStartUp = 0

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_dictionary_filetype_lists = {
			\ 'default': '',
			\ 'vimshell': $HOME.'/.vimshell_hist',
			\ 'scheme': $HOME.'/.gosh_completions'
			\ }

if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

