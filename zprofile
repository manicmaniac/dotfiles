# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:$PATH"

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# rustup
export PATH="$HOME/.cargo/env:$PATH"

# Local config
[[ -f ~/.zprofile.local ]] && source ~/.zprofile.local
