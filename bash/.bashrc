# These file contains *nix generic .bashrc configs

# ------- #
# GENERAL #
# ------- #

export SHELL_USERNAME="pyzlnar@$(scutil --get ComputerName)"

# Renaming PS1
export PS1="$SHELL_USERNAME: "

# UTF8 for bash
# https://stackoverflow.com/q/30479607
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Colors for bash (May need config for unix)
# https://unix.stackexchange.com/q/2897
export CLICOLOR=1

# ----- #
# ALIAS #
# ----- #

# Fast switch alias
alias back='cd ../back;pwd'
alias front='cd ../front;pwd'

# Open GPG to terminal for password
export GPG_TTY=$(tty)
