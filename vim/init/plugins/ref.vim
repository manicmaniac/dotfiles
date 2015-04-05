let g:ref_open = 'vsplit'
let g:ref_cache_dir = $HOME.'/.vim/.tmp/.vim_ref_cache'
let g:ref_use_vimproc = 1
let g:ref_source_webdict_sites = {
			\ 'wiki': {
				\ 'url': 'http://ja.wikipedia.org/wiki/%s',
				\ 'line': 1,
				\ },
			\ 'je': {
				\ 'url': 'http://dictionary.infoseek.ne.jp/jeword/%s',
				\ 'line': 11,
				\ },
			\ 'ej': {
				\ 'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
				\ 'line': 11,
				\ },
			\ 'sof': {
				\ 'url': 'http://stackoverflow.com/search?q=%s',
				\ 'line': 16,
				\ },
			\ }

cabbrev wiki Ref webdict wiki
cabbrev je Ref webdict je
cabbrev ej Ref webdict ej
cabbrev sof Ref webdict sof
cabbrev pydoc Ref pydoc

