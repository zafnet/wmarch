# If not running interactively, don't do anything
[[ $- != *i* ]] && return
 
#--------------------------------------------#
# TAMAÑO GUARDADO Y UBICACION DEL HISTORIAL  #
#--------------------------------------------#
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000

#-----------------------------------------------------------------------------------#
#                   PROMPT PERSONALIZADO PARA DIFERENTE TERMINAL                    # 
#-----------------------------------------------------------------------------------#
#if [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "tilix" ]]; then
#export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

#elif [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "xterm" ]]; then
#export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '  

#fi

if [[ "$(id -u)" -eq "0" ]]; then
export PS1='\[\e[0;1;38;5;196m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;202m\]\H\[\e[0m\]: \[\e[0;31m\]\w \[\e[0;1;38;5;40m\]\[\e[0;3;38;5;78m\]\[\e[0;1;38;5;40m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;196m\]\[\e[0;38;5;196m\] \[\e[0m\]' 

elif [[ "$(id -u)" -eq "1000" ]]; then
export PS1='\[\e[0;1;38;5;40m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;70m\]\H\[\e[0m\]: \[\e[0;1;38;5;33m\]\w \[\e[0;1;38;5;40m\]\[\e[0;3;38;5;79m\]\[\e[0;31m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;40m\]\[\e[0;38;5;41m\] \[\e[0m\]'

fi

#           

#LS_COLORS='di=32:fi=35:ln=93:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=37:*.rpm=90'
#export LS_COLORS

#-----------------------------------#
# OPCIONES DE CONFIGURACION DE BASH #
#-----------------------------------#

# GLOBAL INSENSIBLE A MAYÚSCULAS Y MINÚSCULAS (UTILIZADO EN LA EXPANSIÓN DE NOMBRE DE RUTA)
shopt -s nocaseglob
# CUANDO SE EJECUTE UN COMANDO QUE COINCIDA CON EL NOMBRE DE UN DIRECTORIO, SE EJECUTARÁ UN CD A ESE DIRECTORIO. ESTA OPCIÓN SOLO SE USA EN LOS SHELLS INTERACTIVOS
shopt -s autocd
# EL SHELL BASH INCLUYE, EN EL RESULTADO DE LA EXPANSIÓN FICHEROS, LOS NOMBRES DE ARCHIVO QUE COMIENZAN CON UN PUNTO
shopt -s dotglob
# SI ESTÁ ESTABLECIDA, SE ACTIVAN LAS CARACTERÍSTICAS DE CONCORDANCIA DE PATRONES EXTENDIDOS
shopt -s extglob
# SI ESTÁ ESTABLECIDA, SE PRODUCIRÁ UN ERROR DE EXPANSIÓN CUANDO UN PATRÓN NO TENGA CONCORDANCIA CON NINGÚN FICHERO
# PARA QUE TE MUESTRE PRIMERO EL COMANDO EN VEZ DE EJECUTARLO CUANDO USAMOS !789  EN EL HISTORIAL
shopt -s histverify
# PERMITIRÁ QUE EL COMANDO ECHO INTERPRETE LOS CARACTERES DE ESCAPE, COMO LAS OPCIONES "\n" Y "\t
shopt -s xpg_echo

# IGNORAR MAYÚSCULAS Y MINÚSCULAS AL COMPLETAR CON TAB
bind "set completion-ignore-case on"

#-------------------------------------------------------#
# VERIFICAR SI EL  AUTOCOMPLETADO DE BASH ESTA ACTIVADO #
#-------------------------------------------------------#

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#---------#
#  ALIAS  #
#---------#
alias ll='ls -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias nv='nvim'
alias can='bat'
alias mk='mkdir -v'
alias hi='xed ~/.zsh_history >/dev/null 2>&1  & disown' 
alias tree='lsd --tree'
alias smk='sudo mkdir'
alias cp='cp -v'
alias ..='cd ..'
alias rm='rm -rv'
alias mv='mv -v'
alias ..='cd ..'
#alias rd='rmdir -v'
alias nzs='nvim /home/$USER/.zshrc'
alias nba='nvim /home/$USER/.bashrc'
alias xzs='xed /home/$USER/.zshrc >/dev/null 2>&1  & disown'
alias xba='xed /home/$USER/.bashrc >/dev/null 2>&1  & disown'
alias history='history 0'
alias inst='sudo pacman -S'   
alias actu='sudo pacman -Syu'
alias remo='sudo pacman -Rs'
alias grep='grep --color=auto'
#alias =' --group-dirs=first'
alias ga='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias cl='git clone'
alias gc='git commit -m'
alias pull='git pull origin'
alias gp='git push origin main'
alias gs='git status'
#alias fetch='git fetch'
#alias tag='git tag'
#alias newtag='git tag -a'

#------------#
# FUNCIONES  #
#------------#

#--------------------------------------------------#
# PARA EXTRAER CUALQUIER COMPRIMIDO EN LA TERMINAL #
#--------------------------------------------------#
extra () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "NO SE COMO EXTRAER '$archive'..." ;;
			esac
		else
			echo "'$archive' NO ES UN ARCHIVO VALIDO!"
		fi
	done
}

#------------------#
# COLORES DE 'MAN' #
#------------------#
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
