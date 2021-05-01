g() {
    if [[ $# -gt 0 ]]; then
        git "$@"
    else
        git status
    fi
}

share_history() {
    history -a
    history -c
    history -r
}

export ANDROID_HOME="$HOME/Library/Android/sdk"
PATH=
[[ -x /usr/libexec/path_helper ]] && eval $(/usr/libexec/path_helper -s)
export PATH="$HOME/Library/Python/3.8/bin:$HOME.cargo/bin:/opt/local/bin:/opt/local/sbin:$PATH:$ANDROID_HOME/platform-tools"
export CLICOLOR=1
export EDITOR=vim
export LSCOLORS=Exfxcxdxbxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:tw=42;30:ow=43;30'
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'
export HISTSIZE=65536
export HISTFILESIZE=16777216
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S'
export HISTCONTROL=ignoredups
export PS1='\[\e[1;32m\]\w\[\e[39;0m\] \[\e[1;35m\]$(git rev-parse --abbrev-ref HEAD 2>/dev/null)\[\e[39;0m\] \$ '
PROMPT_COMMAND=share_history
shopt -u histappend
shopt -s extglob
shopt -s nocaseglob
stty stop undef
set -o emacs
set bell-style none
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"
