#!/bin/zsh

#idioma teclat
setxkbmap us -variant altgr-intl

#$PATH with sudo binarys
export PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin

# prompt
PS1="%F{green}%T%f %d"$'\n'""
autoload -U promptinit && promptinit

# completion
autoload -U compinit 
compinit

# correction
#setopt correctall

# If I could disable Ctrl-s completely I would!
setopt NO_FLOW_CONTROL

# beeps are annoying
setopt NO_BEEP

# history
export HISTSIZE=2000 
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space

# prevent "cd /etc" you can type "/etc" 
setopt autocd

# enable cp *.(tar|bz2)
setopt extendedglob

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
alias glg='git log --oneline --graph --decorate --color --all'
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
alias off='sudo shutdown -h now'
alias pronterface='python ~/Documents/3D/soft/Printrun/pronterface.py'
alias slic3r='~/Documents/3D/soft/Slic3r/bin/slic3r'


# Quick find
f() {
    echo "find . -iname \"*$1*\""
    find . -iname "*$1*"
}

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

