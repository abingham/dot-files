# .zshenv is always sourced for all zsh shells
export PATH=$PATH:~/go/bin

# This ensures that pyenv-installed pythons are "framework". Sheesh...
export PYTHON_CONFIGURE_OPTS="--enable-framework --enable-ipv6 --enable-unicode --with-threads"
