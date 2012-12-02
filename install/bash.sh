#!/bin/bash

echo
echo "Running bashrc .dotfiles install script..."
echo

if [[ ${EUID} == 0 ]]
then
	if [[ -f /root/.bashrc ]]
	then
		if ! grep -q "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" /root/.bashrc
		then
			echo "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" >> /root/.bashrc
		fi
	elif [[ -f /root/.profile ]]
	then
		if ! grep -q "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" /root/.profile
		then
			echo "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" >> /root/.profile
		fi
	else
		echo "File not found."
		exit 1
	fi
else
	if [[ -f ~/.bashrc ]]
	then
		if ! grep -q "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" ~/.bashrc
		then
			echo "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" >> ~/.bashrc
		fi
	else
		echo "File not found."
		exit 1
	fi
fi
