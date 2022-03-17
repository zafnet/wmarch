# If not running interactively, don't do anything
[[ $- != *i* ]] && return
 
#--------------------------------------------
# TAMAÑO GUARDADO Y UBICACION DEL HISTORIAL |
#--------------------------------------------
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.bash_history

#---------
#  ALIAS |
#---------
alias ll='ls -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias nv='nvim'
alias can='bat'
alias mk='mkdir'
alias smk='sudo mkdir'
alias nzs='nvim /home/$USER/.zshrc'
alias nba='nvim /home/$USER/.bashrc'
alias xzs='xed /home/$USER/.zshrc'
alias xba='xed /home/$USER/.bashrc'
alias grep='grep --color=auto'
alias mirror="sudo reflector --latest 5  --sort rate --save /etc/pacman.d/mirrorlist"
#alias =' --group-dirs=first'

#------
# GIT |
#------
alias ga='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias cl='git clone'
alias gc='git commit -m'
alias pull='git pull origin'
alias gp='git push origin master'
alias gs='git status'
#alias tag='git tag'
#alias fetch='git fetch'
#alias newtag='git tag -a'

#---------------------
# COLORES PARA 'MAN' |
#---------------------
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

#----------
# EXPORTS |
#----------

#LS_COLORS='di=32:fi=35:ln=93:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=37:*.rpm=90'
#export LS_COLORS

#ELIMINA COMANDOS QUE YA TIPEAMOS CON LAS OPCIONES IGNOREBOTH,ERASEDUPS EN BASH

export HISTCONTROL=ignoreboth,erasedups

 
#PS1 USUARIO BASH
export PS1='\[\e[0;1;38;5;40m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;70m\]\H\[\e[0m\]:\[\e[0;1;38;5;33m\]\w \[\e[0;1;38;5;40m\]\$ \[\e[0;3;38;5;79m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;40m\]\[\e[0;38;5;41m\] \[\e[0m\]'
