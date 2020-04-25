#!/bin/bash

# TODO: add docker support so we start of with a stock vim

# Useage: run the script - please source it e.g. source ./start.sh otherwise
# the alias will not work.

# Screen key: https://www.thregr.org/~wavexx/software/screenkey/

# Start screen key
test -z "$(which screenkey)" && exit 1 # make sure screenkey is installed
test -z "$(which slop)"      && exit 1 # make sure slop is installed

# Begin screenkey with configs - slop will ask you to select the geometry
# i.e. where the logged keys appear/bounded on screen
GEOMETRY=slop=$(slop -f "%g") || exit 1
screenkey -s=large -p=fixed --no-systray --key-mode=translated -f="Source Code Pro for Powerline Semibold" --opacity=0.6 --bg-color=#000000 --geometry=`echo $GEOMETRY | cut -c 6-` &

# Create alias to stop screenkey
alias stopscreenkey="pkill -f screenkey"

# Open files - use tabs as a way of presenting in Vim
vim 0*.md
