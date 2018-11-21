test -r ~/.profile.local && . ~/.profile.local

# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:$PATH"

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
