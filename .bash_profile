# Bash prompt
export PS1="\u@\h:\W\$ "
export CLICOLOR=1

# bash vi mode
set -o vi

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Set go path
export GOPATH=$HOME/gowork

# Set .vimrc
export VIMRC=$HOME/.vimrc

# Set ruby path
export PATH="$HOME/.rbenv/shims:$PATH"

# Aliases
alias ll="ls -al"
alias ly="lilypond"
alias pre="open -a preview"
alias today="date +%F"
alias gits="git status"
alias cl="rlwrap sbcl"
alias emacs="/usr/local/Cellar/emacs/25.1/bin/emacs"

export PATH=$PATH":$HOME/bin"

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


# added by Anaconda3 4.3.1 installer
export PATH="/Users/joelhedtjarn/anaconda/bin:$PATH"
