# .zshenv is always sourced for all zsh shells
export PATH=$PATH:~/go/bin

# This ensures that pyenv-installed pythons are "framework". Sheesh...
export PYTHON_CONFIGURE_OPTS="--enable-framework --enable-ipv6 --enable-unicode --with-threads"

# set up pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"

export PATH=$PATH:/usr/local/bin
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# activate the pyenv venvwrapper plugin
pyenv virtualenvwrapper

# Need to set this for rust to see libgfortran
export LIBRARY_PATH=/usr/local/Cellar/gcc/8.2.0/lib/gcc/8/
