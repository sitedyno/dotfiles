#!/bin/bash

echo
echo "Running git .dotfiles install script..."
echo

echo "Setting up submodules..."
cd ~/.dotfiles
git submodule update --init
cd ~

git config --global core.excludesfile ~/.dotfiles/git/gitignore
if [ "$?" -eq 1 ]
then
	echo "Failed to set core.excludesfile."
else
	echo "Set core.excludesfile to ~/.dotfiles/git/gitignore"
fi

git config --global color.ui "auto"
if [ "$?" -eq 1 ]
then
	echo "Failed to set color.ui!"
else
	echo "Set color.ui to \"auto\""
fi

echo
echo "Your current git configuration:"
git config --list

echo
echo "You should setup name and email for git as well!!"
echo "Run these if you like, remember they are global settings:"
echo "git config --global user.name \"Your Name\""
echo "git config --global user.email \"myusername@myhost\""
