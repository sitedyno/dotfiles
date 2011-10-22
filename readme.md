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
	ln -s ~/.dotfiles/vim ~/.vim
	ln -s ~/.dotfiles/vim/gvimrc ~/.gvimrc

Update git config:
------------------
	git config --global core.excludesfile ~/.gitignore
	git config --global color.ui "auto"

Git builds ctags:
-----------------
	git config --global init.templatedir '~/.dotfiles/git/template'
	Then in any existing git repo where you want this to work simply do: git init
