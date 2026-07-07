if has('python3')
    " Assuming your web browser can render markdown files.
	" For example, Google Chrome needs an extension like [Markdown Viewer](https://chromewebstore.google.com/detail/ckkdlimhmcjmikdlpkmbgfkaikojcbjk)
	nnoremap <silent><Leader>p :python3 import webbrowser; webbrowser.open_new_tab(f'file://{vim.current.buffer.name}')<CR>
endif
