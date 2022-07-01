# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

#-- Si No Es Interactiva, No Hacer Nada

[[ $- != *i* ]] && return

#-- Tamaño Guardado Y Ubicacion Del Historial

HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000

#-- Prompt Personalizado Para Diferente Terminal

# if [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "tilix" ]]; then
# export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

# elif [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "xterm" ]]; then
# export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

# fi

#-- Prompt Personalizado Para Root Y Usuario

if [[ "$(id -u)" -eq "0" ]]; then
export PS1='\[\e[0;1;38;5;196m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;202m\]\H\[\e[0m\]: \[\e[0;31m\]\w \[\e[0;1;38;5;40m\]\[\e[0;3;38;5;78m\]\[\e[0;1;38;5;40m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;196m\]\[\e[0;38;5;196m\] \[\e[0m\]'

elif [[ "$(id -u)" -eq "1000" ]]; then
export PS1='\[\e[0;1;38;5;40m\]\u\[\e[0;1;38;5;35m\]@\[\e[0;1;38;5;70m\]\H\[\e[0m\]: \[\e[0;1;38;5;33m\]\w \[\e[0;1;38;5;40m\]\[\e[0;3;38;5;79m\]\[\e[0;31m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0;38;5;40m\]\[\e[0;38;5;41m\] \[\e[0m\]'

fi

#           

#LS_COLORS='di=32:fi=35:ln=93:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=37:*.rpm=90'
#export LS_COLORS

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

#-- Sistema

alias ll='lsd -lha --group-dirs=first'
alias l='lsd -lda --group-dirs=first */'
alias lo='lsd -lda --group-dirs=first .*/'
alias ls='lsd -lha --group-dirs=first'
alias tree='lsd --tree'
alias to='touch'
alias ins='sudo pacman -S'
alias ac='sudo pacman -Syu'
alias al='sudo pacman -Qs'
alias re='sudo pacman -Rs'
alias rep='sudo pacman -Ss'
alias cp='cp -ur'
alias ct='cp -urv'
alias rm='rm -r'
alias rt='rm -rv'
alias mv='mv -u'
alias mt='mv -uv'
alias mk='mkdir -v'
alias smk='sudo mkdir'
alias pe='du -h | fzf'
alias ic='kitty +kitten icat'
alias ba='bat'
alias his='history 0'
alias mir="sudo reflector --latest 5  --sort rate --save /etc/pacman.d/mirrorlist"
alias grep='grep --color=auto'
alias xd='xrdb merge ~/.Xresources'

#-- Tmux

alias ts='tmux new -s'
alias tl='tmux ls'
alias ta='tmux a -t'
alias tk='tmux kill-session -t'

#-- Editor

alias nv='nvim'
alias xh='xed ~/.zsh_history >/dev/null 2>&1  & disown'
alias nz='nvim /home/$USER/.zshrc'
alias nb='nvim /home/$USER/.bashrc'
alias zx='xed /home/$USER/.zshrc >/dev/null 2>&1  & disown'
alias xb='xed /home/$USER/.bashrc >/dev/null 2>&1  & disown'
alias ns='nvim /home/$USER/.config/sxhkd/sxhkdrc'

#-- Git

alias gs='git status'
alias ga='git add .'
alias gc='git clone'
alias gm='git commit -m'
alias gp='git push origin main'
alias gb='git branch'
alias gk='git checkout'
alias gu='git pull origin'
alias gt='git tag -a'
alias gf='git fetch'
alias gl='git log'

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

#-- FZF

#-- Opcion Con Borde '--height 60% --border'
export FZF_DEFAULT_OPTS='--height 60%'

dl () {
cd $1 ; ls -al
}

ir () {
cd $(find / -type d 2> /dev/null | fzf)
}

op () {
xdg-open $(find / -type f 2> /dev/null | fzf)
}

rf () {
rm -rf $(find / -type f 2> /dev/null | fzf -m)
}

rd () {
rm -rf $(find / -type d 2> /dev/null | fzf -m)
}

nf () {
sh -c 'find / -type f 2> /dev/null | fzf -m | xargs -r nvim'
}

ve () {
find / -type f 2> /dev/null | fzf -m | xargs bat
}

cr () {
find / -type f 2>/dev/null | fzf | tr -d '\n' | xclip -selection c
}

#X hi () { print -z  $(([ -n "$ZSH_NAME" ] && fc -ln) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')}

#cr() {find / -type f 2>/dev/null | fzf | sed 's/^..//' | tr -d '\n' | xclip -selection c}
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
