# Bash prompt
export PS1="\u@\h:\W\$ "
export CLICOLOR=1

# bash vi mode
set -o vi

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

# Codi
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-python}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}
