let g:watchdogs_check_BufWritePost_enables = {
            \ 'c'     : 1,
            \ 'cpp'   : 1,
            \ 'java'  : 1,
            \ 'go'    : 1,
            \ 'scala' : 1,
            \ }

let g:watchdogs_check_CursorHold_enables = {
            \ 'ruby'       : 1,
            \ 'javascript' : 1,
            \ 'python'     : 1,
            \ 'perl'       : 1,
            \ 'php'        : 1,
            \ 'lua'        : 1,
            \ 'sh'         : 1,
            \ 'zsh'        : 1,
            \ 'typescript' : 1,
            \ 'coffee'     : 1,
            \ 'vim'        : 1,
            \ 'haml'       : 1,
            \ }

if !exists('g:quickrun_config')
    let g:quickrun_config = {}
endif

let g:quickrun_config['watchdogs_checker/_'] = {
            \ 'outputter/quickfix/open_cmd': '',
            \ }

