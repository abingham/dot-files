export SHELL="/bin/zsh"

# color notes: 00 -> black, 35 -> white...obviously.
PROMPT=$'%{\033[0;34m%}%n@%m% %% %{\033[1;00m%}'
RPROMPT=$'%{\033[0;31m%}%~%{\033[1;00m%}'
#PROMPT="$ "

TERM=xterm-256color

ulimit -n 1024

alias dirs="dirs -v"

autoload -U compinit
compinit

setopt correctall
# setopt monitor
setopt pushd_ignore_dups

source $HOME/.cdargs-zsh
source $HOME/.zshrc.local

# Git branch stuff
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn hg p4

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$RPROMPT$' $(vcs_info_wrapper)'

# export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin
# export PATH=/usr/local/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### Added by the Heroku Toolbelt

# virtualenvwrapper stuff
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ '
