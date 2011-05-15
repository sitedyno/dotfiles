Installation:
============
Grab the repo
-------------
	git clone git://github.com/sitedyno/dotfiles.git .dotfiles

Update git submodules
---------------------

	cd .dotfiles
	git submodule init
	git submodule update

Create symlinks:
----------------
	ln -s ~/.dotfiles/git/gitignore ~/.gitignore
	ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
	ln -s ~/.dotfiles/vim/ ~/.vim
	ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc
