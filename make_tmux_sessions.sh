#!/bin/bash

session_exists() {
  tmux has-session -t "$1" 2>/dev/null
}


if session_exists long -0 session_exists wide; then
  echo "tmux sessions long or wide already exist"
  exit 1
else
  tmux new-session -s long -d

  tmux new-session -t long -s wide -d 
  tmux new-window -c "/var/efs/analytics/nlu/project"
  # tmux new-window -c "/var/efs/analytics/nlu/project"
  # tmux detach -s wide
fi


# tmux new-session -s long -d
# tmux new-session -t long -s wide -d
