#!/bin/bash

echo
echo "Running vim .dotfiles install script..."
echo

if [[ -d ~/.vim ]] || [[ -L ~/.vim ]]
then
	echo "~/.vim exists, not linking!"
else
	ln -s ~/.dotfiles/vim ~/.vim
fi

if [[ -f ~/.vimrc ]] || [[ -L ~.vimrc ]]
then
	echo "~/.vimrc exists, not linking!"
else
	ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
fi

if [[ -f ~/.gvimrc ]] || [[ -L ~/.gvimrc ]]
then
	echo "~/.gvimrc exists, not linking!"
else
	ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
fi
