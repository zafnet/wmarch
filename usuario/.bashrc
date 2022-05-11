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
alias ll='ls -lha --total-size --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias to='touch'
alias pe='du -h | fzf'
alias nv='nvim'
alias ba='bat'
alias mk='mkdir -v'
alias hi='xed ~/.zsh_history >/dev/null 2>&1  & disown' 
alias tree='lsd --tree'
alias smk='sudo mkdir'
alias cp='cp -ur'
alias ct='cp -urv'
alias rm='rm -r'
alias rt='rm -rv'
alias mv='mv -u'
alias mt='mv -uv'
alias nz='nvim /home/$USER/.zshrc'
alias nb='nvim /home/$USER/.bashrc'
alias xzs='xed /home/$USER/.zshrc >/dev/null 2>&1  & disown'
alias xb='xed /home/$USER/.bashrc >/dev/null 2>&1  & disown'
alias his='history 0'
alias ins='sudo pacman -S'   
alias ac='sudo pacman -Syu'
alias rem='sudo pacman -Rs' 
alias mir="sudo reflector --latest 5  --sort rate --save /etc/pacman.d/mirrorlist"
alias grep='grep --color=auto'
alias ga='git add .'
alias bra='git branch'
alias che='git checkout'
alias cl='git clone'
alias gc='git commit -m'
alias pul='git pull origin'
alias gp='git push origin main'
alias gs='git status'
#alias fet='git fetch'
#alias tag='git tag'
#alias nt='git tag -a'

#------------#
# FUNCIONES  #
#------------#

#---------------------------------------------#
# EXTRAER CUALQUIER COMPRIMIDO EN LA TERMINAL #
#---------------------------------------------#
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

#-----#
# FZF #
#-----#
#OPCION CON BORDE '--height 60% --border'
export FZF_DEFAULT_OPTS='--height 60%'

ir() { cd $(find / -type d 2> /dev/null | fzf) }

op() { xdg-open $(find / -type f 2> /dev/null | fzf) }

rf() { rm -rf $(find / -type f 2> /dev/null | fzf -m) }

rd() { rm -rf $(find / -type d 2> /dev/null | fzf -m)} 

nvf() { nvim $(find / -type f 2> /dev/null | fzf -m)}

cr() {find -type f | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c}

tor() { print -z  $(([ -n "$ZSH_NAME" ] && fc -ln) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')}

xr(){exec xrdb merge ~/.Xresources}

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

#remo=(.zcompdump .xsession-errors .lesshst)

#for x in ${remo[@]}; do
#   [ -f ${x} ] && rm -f ${x} 
#done
