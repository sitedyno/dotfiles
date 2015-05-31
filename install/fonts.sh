#!/bin/bash

echo
echo "Running fonts .dotfiles install script..."
echo

fontdir="$HOME/.fonts"
DSMPttfLink="https://gist.githubusercontent.com/shift/2324335/raw/fafb79037ecbdd1b61ebbc512b9f5ab631a93f3b/DroidSansMono-Powerline.ttf"
DSMDPttfLink="https://gist.githubusercontent.com/shift/2324335/raw/3f941e9b09bafdc2df960f1dd5609de0eb03533d/DroidSansMonoDotted-Powerline.ttf"
DSMSPttfLink="https://gist.githubusercontent.com/shift/2324335/raw/af42b835b96b9c528c35c703bf13ab159c71624a/DroidSansMonoSlashed-Powerline.ttf"
which wget > /dev/null
if [ "$?" -eq 0 ]
then
	if [[ ! -d "$fontdir" ]]
	then
		echo "Creating $fontdir"
		mkdir -p "$fontdir"
	fi
	if [[ ! -f "$fontdir/DroidSansMono-Powerline.ttf" ]]
	then
		wget -O "$fontdir/DroidSansMono-Powerline.ttf" $DSMPttfLink -q
	else
		echo "DroidSansMono-Powerline.ttf exists, skipping download."
	fi
	if [[ ! -f "$fontdir/DroidSansMonoDotted-Powerline.ttf" ]]
	then
		wget -O "$fontdir/DroidSansMonoDotted-Powerline.ttf" $DSMDPttfLink -q
	else
		echo "DroidSansMonoDotted-Powerline.ttf exists, skipping download."
	fi
	if [[ ! -f "$fontdir/DroidSansMonoSlashed-Powerline.ttf" ]]
	then
		wget -O "$fontdir/DroidSansMonoSlashed-Powerline.ttf" $DSMSPttfLink -q
	else
		echo "DroidSansMonoSlashed-Powerline.ttf exists, skipping download."
	fi
	echo "Updating font cache..."
	fc-cache -vf
else
	echo "wget not found, need to install it?"
fi
