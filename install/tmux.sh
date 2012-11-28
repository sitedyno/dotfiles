#!/bin/bash

echo
echo "Running tmux .dotfiles install script..."
echo

if [[ ${EUID} != 0 ]]
then
	if [[ -f ~/.tmux.conf ]] || [[ -L ~/.tmux.conf ]]
	then
		echo "~/.tmux.conf exists, not linking!"
	else
		ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
	fi
else
	echo "Not linking tmux conf as root!"
	echo
	echo "Link it yourself if you like:"
	echo "ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf"
fi
