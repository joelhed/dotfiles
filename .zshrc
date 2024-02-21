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

# Add hledger journal file
export LEDGER_FILE=~/workspace/bokforing/2022.journal

# Aliases
alias ll="ls -al"
alias ly="lilypond"
alias pre="open -a preview"
alias today="date +%F"
alias gits="git status"
alias cl="rlwrap sbcl"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/joel/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/joel/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/joel/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/joel/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export PATH="/Users/joel/.local/bin:$PATH"

