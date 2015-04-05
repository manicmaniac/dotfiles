let g:neosnippet#snippets_directory = $HOME.'/.vim/snippets'

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

command! -nargs=* Snippet NeoSnippetEdit -vertical <args>

