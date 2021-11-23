export CLICOLOR=1

# vi mode
bindkey -v

# default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Set .vimrc
export VIMRC=$HOME/.vimrc

# Add ~/bin to path
export PATH=$PATH:$HOME/bin

# Aliases
alias ll="ls -al"
alias ly="lilypond"
alias pre="open -a preview"
alias today="date +%F"
alias gits="git status"
alias cl="rlwrap sbcl"
