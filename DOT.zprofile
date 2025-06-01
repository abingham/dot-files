# This lets us defeat the path_tool manipulations of PATH. We need the pyenv shims at the front!

# Created by `pipx` on 2021-04-26 09:43:28
export PATH="$PATH:/Users/abingham/.local/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"

# export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#source "$HOME/.rye/env"
