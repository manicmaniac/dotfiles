" alternate escape key
nnoremap <C-@> <Esc>
inoremap <C-@> <Esc>
cnoremap <C-@> <Esc>
vnoremap <C-@> <Esc>
onoremap <C-@> <Esc>

" force redraw screen when searching words
nnoremap <silent> n nzz:se hls<CR>
nnoremap <silent> N Nzz:se hls<CR>

" disable highlight by <C-L>
nnoremap <silent> <C-L> :se nohls<CR>

" better gm
nnoremap <silent> gm :call cursor(line('.'), (virtcol('^') + virtcol('$')) / 2)<CR>
onoremap <silent> gm :call cursor(line('.'), (virtcol('^') + virtcol('$')) / 2)<CR>

" moving among tabs
nnoremap <silent> <Tab> :tabn<CR>
nnoremap <silent> <S-Tab> :tabp<CR>

" Windows-like key binds
vnoremap <Leader><C-X> "+x
vnoremap <S-Del> "+x

vnoremap <Leader><C-C> "+y
vnoremap <C-Insert> "+y

map <Leader><C-V> "+gP
map <S-Insert> "+gP

cmap <Leader><C-V> <C-R>+
cmap <S-Insert> <C-R>+

imap <S-Insert> <C-V>
vmap <S-Insert> <C-V>

nnoremap <C-Tab> gt
inoremap <C-Tab> <C-O>gt
cnoremap <C-Tab> <C-C>gt
onoremap <C-Tab> <C-C>gt
noremap <C-S-Tab> gT
inoremap <C-S-Tab> <C-O>gT
cnoremap <C-S-Tab> <C-C>gT
onoremap <C-S-Tab> <C-C>gT

nnoremap <C-F4> <C-W>C
inoremap <C-F4> <C-O><C-W>C
cnoremap <C-F4> <C-C><C-W>C
onoremap <C-F4> <C-C><C-W>C

" Emacs-like key binds within <insert> or <command> mode
inoremap <C-F> <Right>
inoremap <C-B> <Left>
inoremap <C-D> <Delete>
inoremap <C-A> <Home>
inoremap <C-E> <End>
inoremap <C-L> <C-O>zz
inoremap <C-J> <C-O>j
inoremap <C-U> <C-O>d^

cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-D> <Delete>
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-\>e ((getcmdpos() == 1) ? '' : getcmdline()[:getcmdpos() - 2])<CR>
inoremap <C-K> <C-O>d$

" omni completion
inoremap <C-N> <C-X><C-O>

" keyword completion
inoremap <C-P> <C-X><C-N>

" filename completion
inoremap <C-N><C-F> <C-X><C-F>
inoremap <C-P><C-F> <C-X><C-P>

" text objects
nnoremap yis yi'
nnoremap yas ya'
nnoremap dis di'
nnoremap das da'
nnoremap cis ci'
nnoremap cas ca'
nnoremap vis vi'
nnoremap vas va'

nnoremap yid yi"
nnoremap yad ya"
nnoremap did di"
nnoremap dad da"
nnoremap cid ci"
nnoremap cad ca"
nnoremap vid vi"
nnoremap vad va"

nnoremap yic yi}
nnoremap yac ya}
nnoremap dic di}
nnoremap dac da}
nnoremap cic ci}
nnoremap cac ca}
nnoremap vic vi}
nnoremap vac va}

nnoremap yi> T>yt<
nnoremap ya> F<yf>
nnoremap di> T>dt<
nnoremap da> F<df>
nnoremap ci> T>ct<
nnoremap ca> F<cf>
nnoremap vi> T>vt<
nnoremap va> F<vf>

nnoremap yi< T>yt<
nnoremap ya< F<yf>
nnoremap di< T>dt<
nnoremap da< F<df>
nnoremap ci< T>ct<
nnoremap ca< F<cf>
nnoremap vi< T>vt<
nnoremap va< F<vf>

nnoremap yi_ T_yt_
nnoremap ya_ F_yf_
nnoremap di_ T_dt_
nnoremap da_ F_df_
nnoremap ci_ T_ct_
nnoremap ca_ F_cf_
nnoremap vi_ T_vt_
nnoremap va_ F_vf_

nnoremap yiu T_yt_
nnoremap yau F_yf_
nnoremap diu T_dt_
nnoremap dau F_df_
nnoremap ciu T_ct_
nnoremap cau F_cf_
nnoremap viu T_vt_
nnoremap vau F_vf_

nnoremap yi- T-yt-
nnoremap ya- F-yf-
nnoremap di- T-dt-
nnoremap da- F-df-
nnoremap ci- T-ct-
nnoremap ca- F-cf-
nnoremap vi- T-vt-
nnoremap va- F-vf-

nnoremap yih T-yt-
nnoremap yah F-yf-
nnoremap dih T-dt-
nnoremap dah F-df-
nnoremap cih T-ct-
nnoremap cah F-cf-
nnoremap vih T-vt-
nnoremap vah F-vf-

" <CR> should be considered as $/0/^.
nnoremap f<CR> $
nnoremap t<CR> $
nnoremap F<CR> 0
nnoremap T<CR> ^

" yank link D/C
nnoremap Y y$

" open help with a single key stroke
nnoremap <C-H> :vertical help 

" substitute a word onto which the cursor is
nnoremap <S-S> "syiw:%s/<C-R>s//g<Left><Left>
vnoremap <S-S> "sy:%s/<C-R>s//g<Left><Left>

" switch window with a single key stroke
nnoremap + <C-W>w
nnoremap - <C-W>W

" diff-mode shortcut
nnoremap <Leader>d :windo diffthis<CR>
nnoremap <Leader>D :diffoff<CR>

" jump to next or previous equal sign
nnoremap ]= /=<CR>w
nnoremap [= ?=<CR>w
nnoremap ]e /=<CR>w
nnoremap [e ?=<CR>w

" jump to next or previous quote
nnoremap ]' /'<CR>w
nnoremap [' ?'<CR>w
nnoremap ]s /'<CR>w
nnoremap [s ?'<CR>w
nnoremap ]" /"<CR>w
nnoremap [" ?"<CR>w
nnoremap ]d /"<CR>w
nnoremap [d ?"<CR>w

" exchange lines
nnoremap yp yyp
nnoremap yP yyP
nnoremap dp ddp
nnoremap dP ddP

" open new buffer
nnoremap g. :belowright new<CR>

" always use very magic
nnoremap / /\v
nnoremap ? ?\v

" less-like key binds
nnoremap <Space> <C-F>
nnoremap <Esc><Space> <C-B>

" search history in command mode
nnoremap <C-S> <Esc>q:?
cnoremap <C-S> <Esc>q:?

