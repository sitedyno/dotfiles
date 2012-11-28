#!/bin/bash

echo
echo "Running bashrc .dotfiles install script..."
echo

if [[ ${EUID} == 0 ]]
then
	if [[ -f ~/.bashrc ]]
	then
		echo "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" >> ~/.bashrc
	elif [[ -f ~/.profile ]]
	then
		echo "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" >> ~/.profile
	else
		echo "File not found."
		exit 1
	fi
else
	if [[ -f ~/.bashrc ]]
	then
		echo "[[ -f ~/.dotfiles/bash/bashrc ]] && . ~/.dotfiles/bash/bashrc" >> ~/.bashrc
	else
		echo "File not found."
		exit 1
	fi
fi
