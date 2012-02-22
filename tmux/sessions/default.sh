#!/bin/bash
session="$USER-default"
#echo $session

tmux has-session -t $session > /dev/null 2>&1
if [ $? -eq 0 ]; then
	echo "Attaching to existing session: $session."
	sleep 1
	tmux -2 attach -t $session
	exit 0;
fi

echo "Creating new session: $session."
tmux -2 new-session -ds $session
tmux new-window -t $session:0 -k -n root "su -"

# irc...
tmux new-window -t $session:1 -n irc weechat-curses

tmux new-window -t $session:2 vim
tmux split-window -v -t $session:2 bash
tmux resize-pane -D -t $session:2.1 12
tmux new-window -t $session -a -n bash bash
tmux new-window -t $session -a -n bash bash
tmux new-window -t $session -a -n bash bash
tmux new-window -t $session -a -n bash bash

tmux select-window -t $session:0
tmux -2 attach -t $session

