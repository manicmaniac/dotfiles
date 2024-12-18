# undef Ctrl-S (lock tty)
stty stop undef
disable r

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
    current_branch=$(git current-branch 2> /dev/null)
    if [[ -n $current_branch ]]; then
        echo " %{$fg_bold[magenta]%}$current_branch%{$reset_color%}"
    fi
}

# prompt
setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg_bold[red]%}%n@%m:"}%{$fg_bold[green]%}%/%{$reset_color%}$(git_prompt_info) %# '

# load our own completion functions
fpath=(~/.zsh/zsh-completions/src ~/.zsh/docker-zsh-competion $fpath)

# completion
autoload -U compinit
compinit
setopt auto_list
setopt auto_menu
setopt list_packed
bindkey "\e[Z" reverse-menu-complete
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ':completion:*:sudo:*' command-path $PATH

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# makes color constants available
autoload -U colors
colors

# colors
export CLICOLOR=1
export LSCOLORS='Exfxcxdxbxegedabagacad'
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'

# history settings
setopt hist_ignore_all_dups inc_append_history
export HISTFILE=~/.zhistory
export HISTSIZE=65536
export SAVEHIST=16777216
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S'
setopt extended_history
setopt hist_ignore_dups
setopt share_history
setopt bang_hist
alias history-all='history -E 1'


# awesome cd movements from zshkit
# setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
# DIRSTACKSIZE=5

# glob
setopt extendedglob
unsetopt caseglob

# Allow [ or ] whereever you want
# unsetopt nomatch

# keybind
bindkey -e # emacs-mode

# options
setopt no_beep # no beep
setopt correct # spell check
setopt equals  # =command as `which`

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/pre/*)
          :
          ;;
        "$_dir"/post/*)
          :
          ;;
        *)
          if [ -f $config ]; then
            . $config
          fi
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
