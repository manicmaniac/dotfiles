let g:lightline = {
			\ 'colorscheme': 'solarized',
			\ 'active': {
				\ 'left': [
					\ ['paste', 'branch'],
					\ ['readonly', 'filename', 'modified', 'filetype'],
					\ ],
				\ 'right': [
					\ ['fileencoding', 'fileformat', 'lineinfo', 'percent'],
					\ ],
				\ },
			\ 'inactive': {
				\ 'left': [
					\ ['paste'],
					\ ['readonly', 'filename', 'modified', 'filetype'],
					\ ],
				\ 'right': [
					\ ['fileencoding', 'fileformat', 'lineinfo', 'percent'],
					\ ],
				\ },
			\ 'component': {
				\ 'branch': '%{exists("*fugitive#head")?fugitive#head():""}',
				\ 'filetype': '%{&filetype!=""?printf("[%s]",&filetype):""}',
				\ 'fileformat': '%{&fileformat=="unix"?"LF":&fileformat=="dos"?"CR+LF":"CR"}',
				\ },
			\ 'component_visible_condition': {
				\ 'branch': 'exists("*fugitive#head")&&fugitive#head()!=""',
				\ 'filetype': '&filetype!=""',
				\ },
			\ }

