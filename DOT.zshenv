# .zshenv is always sourced for all zsh shells
export PATH=$PATH:~/go/bin
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
