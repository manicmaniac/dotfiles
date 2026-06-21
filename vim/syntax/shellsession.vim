syntax match myPromptPath /^\/[^ %]\+\(.*%\s*\)\@=/
syntax match myPromptBranch /\(^\/[^ %]\+\s\+\)\@<=[^ %]\+\(\s\+%\s*\)\@=/
syntax match myPromptSign /%\s*/
highlight myPromptPath ctermfg=green guifg=#00ff00
highlight myPromptBranch ctermfg=magenta guifg=#ff00ff
highlight myPromptSign cterm=bold gui=bold
