#!/usr/bin/bash

if [ -f /EON ]; then
  tmux kill-session -t comma;
  rm -f /tmp/safe_staging_overlay.lock;
  tmux new -s comma -d "echo $$ > /dev/cpuset/app/tasks && echo $PPID > /dev/cpuset/app/tasks && /data/openpilot/launch_openpilot.sh"
elif [ -f /TICI ]; then
  tmux kill-session -t comma;
  rm -f /tmp/safe_staging_overlay.lock;
  tmux new -s comma -d "/data/openpilot/launch_openpilot.sh"
fi
