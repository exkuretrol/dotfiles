# Set Variables
# Syntax highlighting for man page using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD="bat"

# Change ZSH Options

# Create Aliases
alias ll='exa -laFh --git'
alias exa='exa -laFh --git'
alias man='batman'
alias bbd='brew bundle dump --force --describe'
alias trail='<<< ${(F)path}'
alias rm='trash'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '
RPROMPT='%*'

# Add Locations to $path array
typeset -U path

path=(
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


# Use ZSH Plugins

# ...and Other Surprises
