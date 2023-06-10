# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

#-- Si No Es Interactiva, No Hacer Nada

[[ $- != *i* ]] && return

source ~/.config/bashc/aleasb
source ~/.config/bashc/funfzfb
source ~/.config/bashc/exportsb

#-- Tamaño Guardado Y Ubicacion Del Historial

HISTFILE="$HOME/.config/bashc/.bash_history"
HISTSIZE=1000
SAVEHIST=1000

#-- Prompt Personalizado Para Root Y Usuario

if [[ "$(id -u)" -eq "0" ]]; then
export PS1='\[\e[0;1;38;5;196m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;202m\]\H\[\e[0m\]: \[\e[0;31m\]\w \[\e[0;1;38;5;40m\]\[\e[0;3;38;5;78m\]\[\e[0;1;38;5;40m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;196m\]\[\e[0;38;5;196m\] \[\e[0m\]'

elif [[ "$(id -u)" -eq "1000" ]]; then
export PS1='\[\e[0;1;38;5;40m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;70m\]\H\[\e[0m\]: \[\e[0;1;38;5;33m\]\w \[\e[0;1;38;5;40m\]\[\e[0;3;38;5;79m\]\[\e[0;31m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;40m\]\[\e[0;38;5;41m\] \[\e[0m\]'

fi

#-- Opciones De Configuracion De Bash

shopt -s nocaseglob
shopt -s autocd
shopt -s dotglob
shopt -s extglob
shopt -s histverify
shopt -s xpg_echo

#-- Ignorar Mayúsculas Y Minúsculas Al Completar Con Tab

bind "set completion-ignore-case on"

#-- Verificar Si El  Autocompletado De BASH Esta Activado

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#-- Funciones

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

#-- Colores De 'MAN'

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

#-- Terminal XTERM Con Cursor Forma De Haz
printf '\033[6 q'
