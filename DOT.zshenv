# .zshenv is always sourced for all zsh shells
export PATH=$PATH:~/go/bin

export PATH=$HOME/.local/share/ponyup/bin:$PATH

# This ensures that pyenv-installed pythons are "framework". Sheesh...
export PYTHON_CONFIGURE_OPTS="--enable-framework --enable-ipv6 --enable-unicode --with-threads"

export PATH=$PATH:/usr/local/bin

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Tools like pipx put stuff here.
export PATH="$PATH:$HOME/.local/bin"

# Do this *without* rehashing to avoid a) doing it too many times (i.e. on each
# subprocess invocation) and b) the resulting locking problem. We'll do
# rehashing on interactive shells.
#if command -v pyenv 1>/dev/null 2>&1; then
#    eval "$(pyenv init --no-rehash -)"
#fi

# Need to set this for rust to see libgfortran
export LIBRARY_PATH=/usr/local/Cellar/gcc/8.2.0/lib/gcc/8/

# Activate a Python virtual environment based on the Python executable in that environment.
# This is useful e.g. in vscode tasks which only really have access to that executable but 
# still want to activate an environment. 
activate_from_py () {
    BIN_DIR=`dirname $1` 
    ACTIVATE_SCRIPT=$BIN_DIR/activate
    source $ACTIVATE_SCRIPT
}
. "$HOME/.cargo/env"
