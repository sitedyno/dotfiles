Installation:
============

Grab the repo
-------------

	git clone git://github.com/sitedyno/dotfiles.git .dotfiles

Install via convenient install script
-------------------------------------

	. ~/.dotfiles/install/all.sh

Install individual bits. Source whichever you like:
---------------------------------------------------

	. ~/.dotfiles/install/bash.sh
	. ~/.dotfiles/install/git.sh
	. ~/.dotfiles/install/tmux.sh
	. ~/.dotfiles/install/vim.sh

Want git to build ctags?
------------------------

	git config --global init.templatedir '~/.dotfiles/git/template'
	Then in any existing git repo where you want this to work simply do: git init
