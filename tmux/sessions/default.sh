#!/bin/bash
session="$USER-default"
#session="$USER-test"
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
#tmux new-window -t $session:1 -n irc weechat-curses
tmux new-window -t $session:1 -n bash bash
tmux split-window -v -t $session:1 bash
tmux resize-pane -D -t $session:1.1 100

tmux new-window -t $session -n bash bash
tmux split-window -v -t $session:2 bash
tmux resize-pane -D -t $session:2.1 12

tmux new-window -t $session -a -n bash bash
tmux split-window -v -t $session:3 bash
tmux resize-pane -D -t $session:3.1 12

tmux new-window -t $session -a -n bash bash
tmux split-window -v -t $session:4 bash
tmux resize-pane -D -t $session:4.1 12

tmux new-window -t $session -a -n bash bash
tmux split-window -v -t $session:5 bash

tmux new-window -t $session -a -n bash bash
tmux split-window -h -t $session:6 bash

tmux new-window -t $session -a -n bash bash

tmux select-window -t $session:0
tmux -2 attach -t $session

