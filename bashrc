# undef Ctrl-S (lock tty)
stty stop undef

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
    current_branch=$(git current-branch 2> /dev/null)
    if [[ -n $current_branch ]]; then
        printf " \033[1m\033[35m$current_branch\033[39m\033[0m"
    fi
}

# prompt
export PS1='${SSH_CONNECTION+"\e[1m\e[31m\u@\H:\e[39m\e[0m"}\e[1m\e[32m$PWD\e[39m\e[0m$(git_prompt_info) \$ '

# load custom executable functions
for function in ~/.bash/functions/*; do
  source $function
done

# colors
export CLICOLOR=1
export LSCOLORS='Exfxcxdxbxegedabagacad'
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:tw=42;30:ow=43;30'
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'

# history settings
export HISTFILE=~/.bash_history
export HISTSIZE=65536
export HISTFILESIZE=16777216
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '
export HISTCONTROL=ignoredups
share_history() { history -a; history -c; history -r; }
PROMPT_COMMAND='share_history'
shopt -u histappend

# glob
shopt -s extglob
shopt -s nocaseglob

# keybind
set -o emacs

# options
set bell-style none

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# extra files in ~/.bash/configs/pre , ~/.bash/configs , and ~/.bash/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*; do
        [ -f "$config" ] || continue
        . $config
      done
    fi

    for config in "$_dir"/**/*; do
      [ -f "$config" ] || continue
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
      for config in "$_dir"/post/**/*; do
        [ -f "$config" ] || continue
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.bash/configs"

# Local config
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local

