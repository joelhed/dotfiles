#!/usr/bin/env bash

SESSION=munter
PROJECT_DIR=~/workspace/munter

function create_named_window {
    tmux new-window -t $SESSION \
        -a \
        -n "$1" \
        -c "$PROJECT_DIR/$1" \
        vim
    tmux split-window -t $SESSION:$1 \
        -c "$PROJECT_DIR/$1" \
        -h \
        -l 80
    tmux send-keys -t $SESSION:$1 \
        "clear; ls" Enter
}

cd $PROJECT_DIR

tmux -2 new-session -d -s $SESSION \
    -x "$(tput cols)" \
    -y "$(tput lines)"
tmux rename-window -t $SESSION:0 "deployment"
tmux send-keys -t $SESSION:0 \
    "cd $PROJECT_DIR/deployment; clear; ls" Enter
create_named_window alma-service
create_named_window alma-runner
create_named_window doc-handler
create_named_window kf-handler
create_named_window frontend
