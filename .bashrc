#!/bin/zsh

#$PS1 the command prompt
export PS1="[\u@\h ]\$PWD$ "

#$PATH with sudo binarys
export PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin

# history
export HISTSIZE=2000 
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# my alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -A'
alias biggest='find -type f -printf '\''%s %p\n'\'' | sort -nr | head -n 40 | gawk "{ print \$1/1000000 \" \" \$2 \" \" \$3 \" \" \$4 \" \" \$5 \" \" \$6 \" \" \$7 \" \" \$8 \" \" \$9 }"'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias gad='git add'
alias gcm='git commit'
alias gs='git status'
alias glg='git log --format="%C(yellow)%h %Cblue%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s" --graph --decorate --color --all'
alias gps='git push'
alias gpl='git pull'
alias gbr='git branch'
alias gch='git checkout'
alias gst='git stash'
alias grs='git reset'
alias gcl='git clean -fd'
alias grm='git remote'
alias gm='git merge'
alias gft='git fetch'
alias gdf='git diff --color'
alias cd..='cd ..'

