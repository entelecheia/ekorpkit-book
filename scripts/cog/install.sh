#!/bin/bash

cog=$(which cog)
if [ "$cog" ]; then
	echo "cog is installed, removing..."
	rm $cog
fi
cog=$HOME/bin/cog
echo "installing cog to $cog"
curl -o $cog -L https://github.com/replicate/cog/releases/latest/download/cog_`uname -s`_`uname -m`
chmod +x $cog
