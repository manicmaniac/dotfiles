set t_vb=

colorscheme solarized
set background=light

nnoremap <S-Space> <C-B>

set guioptions=eiM

set guifont=Ricty,Monospace

if filereadable($HOME . "/.gvimrc.local")
    source ~/.gvimrc.local
endif

