#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Any handling for git hosting.
export GIT_HOSTING='git@github.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Custom aliases
source ~/.dotfiles.aliases.sh

# Load Bash It, if it's installed.
[[ -s $BASH_IT/bash_it.sh ]] && source $BASH_IT/bash_it.sh
