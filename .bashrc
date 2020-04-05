#!/bin/bash

#$PS1 the command prompt
export PS1="[\u@\h ]\$PWD$ "

#$PATH with sudo binarys
export PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin

# history
export HISTSIZE=2000 
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Add bash aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

function findOcurrences() {
	if [ -z "$1" ]; then
		echo "Usage: $0 [ocurrences]";
		return
	fi
	find -O3 . -regex '.*\.\(c\|cpp\|h\)$' -exec grep $1 -sl '{}' \;
}

function findOcurrencesDetailed() {
	if [ -z "$1" ]; then
		echo "Usage: $0 [ocurrences]";
		return
	fi

	find ./ -iname "*" -type f -print0  |  xargs -0 grep -H "$1"
}
