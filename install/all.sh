#!/bin/bash

echo
echo "Running all .dotfiles install scripts..."
echo

for f in ~/.dotfiles/install/*; do
	if [[ $f =~ .*all.sh ]]
	then
		continue
	fi
	source $f
done

