augroup autocommands#quickfix
	autocmd!
	autocmd QuickFixCmdPost *grep* cwindow
augroup END

augroup autocommands#cursor_highlight
	autocmd!
	autocmd CursorHold,CursorHoldI,FocusGained,WinEnter,BufRead
				\ * set cursorcolumn cursorline
	autocmd CursorMoved,CursorMovedI,InsertEnter,InsertLeave,FocusLost,WinLeave
				\ * set nocursorcolumn nocursorline
	if has('colorcolumn')
		autocmd InsertEnter * set colorcolumn=1
		autocmd InsertLeave * set colorcolumn=
	endif
augroup END

augroup autocommands#kill_input_method
	autocmd!
	autocmd InsertEnter,InsertLeave * set iminsert=0
augroup END

augroup autocommands#command_mode
	autocmd!
	autocmd CmdwinEnter * nnoremap <silent><buffer> q :quit<CR>
				\ | nnoremap <silent><buffer> <Esc><Esc> :quit<CR>
				\ | nnoremap <buffer> <C-S> <Esc>?
				\ | nnoremap <silent> <C-W>k :quit<CR>
augroup END

