# .zshrc is sourced at the beginning of interactive shells

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export DISABLE_VENV_CD=1

# Path to your oh-my-zsh installationzsh-.
export ZSH=$HOME/.oh-my-zsh

# set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="terminalparty"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
    docker
    git
    zsh-autosuggestions
    rye
    stripe
    direnv
)

source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

unsetopt share_history
unsetopt autopushd

alias ls="ls -F"
alias pipup='pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install --upgrade'
alias bpython="uv run --with bpython bpython"
alias tt="tubetrain"

export JULIA_EDITOR=vim
export EDITOR=vim

# This helps e.g. magickwand find it's libraries
export MAGICK_HOME=/opt/homebrew

export PIP_REQUIRE_VIRTUALENV=true
eval "$(atuin init zsh)"

source /Users/austin/.docker/init-zsh.sh || true # Added by Docker Desktop
export MAGICK_HOME="/opt/homebrew"

# export UV_INDEX_URL=http://localhost:4040/root/toplevel/+simple 

vshow() {
    SLIDE_NAME="<NO SLIDE DEFINED>"
    if [ -n "$1" ]
    then
        SLIDE_NAME=$1
    fi

    THEME_NAME="pluralsight_2023_light"
    if [ -n "$2" ]
    then
        THEME_NAME=$2
    fi

    RESOLUTION="800x600"
    if [ -n "$3" ]
    then
        RESOLUTION=$3
    fi

    echo visning view-slide --theme=$THEME_NAME --resolution=$RESOLUTION --display=0 $SLIDE_NAME
    visning view-slide --theme=$THEME_NAME --resolution=$RESOLUTION --display=0 $SLIDE_NAME
}

fpath=(~/.stripe $fpath)
autoload -Uz compinit && compinit -i

# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# pyenv virtualenvwrapper
# source "$HOME/.rye/env"

source <(jj util completion zsh)
. ~/.deca-complete.zsh
. ~/.visning-complete.zsh
. ~/.deca-complete.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
source <(ng completion script)
