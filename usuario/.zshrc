#  ███████╗░██████╗██╗░░██╗██████╗░░█████╗░
#  ╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗
#  ░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝
#  ██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗
#  ███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝
#  ╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

#-- Fuente De Donde Carga Los Plugins Zsh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#-- Tamaño Ubicacion Y Guardado Del Historial

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

#-- Prompt Personalizado Sin Powerlevel10k Con Prompt_subst Opcion De Zsh

git_b() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{ \1 }/' }

setopt PROMPT_SUBST

if [[ "$(id -u)" -eq "0" ]]; then
PROMPT='%F{red}%n%f%F{#ffe647}%f%F{#ffffff}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

elif [[ "$(id -u)" -eq "1000" ]]; then
PROMPT='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '
fi

#-- Sistema

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
alias his='history 0'
alias grep='grep --color=auto'
alias xd='xrdb merge ~/.Xresources'

#-- Apps

alias ll='lsd -lha --group-dirs=first'
alias l='lsd -lda --group-dirs=first */'
alias lo='lsd -lda --group-dirs=first .*/'
alias ls='lsd -lha --group-dirs=first'
alias tree='lsd --tree'
alias ba='bat'
alias mir="sudo reflector --latest 5  --sort rate --save /etc/pacman.d/mirrorlist"
alias ra='ranger'

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

export FZF_DEFAULT_OPTS='--height 60% --border'

dl(){ cd $1 ; ls -al }

ir() { cd $(find / -type d 2> /dev/null | fzf -e --border --cycle --prompt="Ir a La Carpeta: ") }

op() { xdg-open $(find / -type f 2> /dev/null | fzf -e --border --cycle --prompt="Abrir: ") }

rf() { rm -rf $(find / -type f 2> /dev/null | fzf -m -e --border --cycle --prompt="Borrar Archivo: ") }

rd() { rm -rf $(find / -type d 2> /dev/null | fzf -m -e --border --cycle --prompt="Borrar Directorio: ")}

nf () { sh -c 'find / -type f 2> /dev/null | fzf -m -e --border --cycle --prompt="Abrir Con Nvim: "| xargs -r nvim'}

ve () {find / -type f 2> /dev/null | fzf -m -e --border --cycle --prompt="Vista Previa De: "| xargs bat}

cr() {find / -type f 2>/dev/null | fzf -e --border --cycle --prompt="Copiar Ruta: " | tr -d '\n' | xclip -selection c}

hi() { print -z  $(([ -n "$ZSH_NAME" ] && fc -ln) | fzf +s --tac -e --border --cycle --prompt="Historial: "| sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')}

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

#-- Autocompletado Moderno De ZSH

autoload -Uz compinit
compinit

zstyle ':completion:*' format 'autocompletado %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2

#-- Opciones De ZSH

unsetopt MENU_COMPLETE
unsetopt FLOW_CONTROL
unsetopt NO_BEEP
setopt AUTO_CD
setopt ALWAYS_TO_END
setopt AUTO_LIST
setopt AUTO_PARAM_SLASH
setopt COMPLETE_IN_WORD
setopt CORRECT
setopt PATH_DIRS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt SHARE_HISTORY
#setopt AUTO_NAME_DIRS
#setopt APPEND_HISTORY
#setopt EXTENDED_HISTORY
#setopt INC_APPEND_HISTORY
#setopt HIST_EXPIRE_DUPS_FIRST


#-- Mod De Teclas Para La Terminal ZSH

bindkey ";5D" backward-word
bindkey ";5C" forward-word
bindkey ";5"  delete-word
bindkey "\e[3~"   delete-char

#-- Opciones NVIM Para La Terminal

#bindkey -v
#export KEYTIMEOUT=1
#bindkey vicmd 'º' edit-command-line
#bindkey viins '^i' vi-cmd-mode
#bindkey '^j' vi-cmd-mode
#bindkey '^h' vi-backward-char
#bindkey '^k' vi-up-line-or-history
#bindkey '^l' vi-forward-char
#bindkey '^j' vi-down-line-or-history

#-- Cursor En Forma De Haz Para Modos De NVIM En Terminal

#function zle-line-init zle-keymap-select {
#  if [ $KEYMAP = vicmd ]; then
#    echo -ne '\e[1 q'
#  elif [[ $KEYMAP == main ]] || [[ $KEYMAP == viins ]] || [[ $KEYMAP = '' ]] || [[ $1 = 'beam' ]]; then
#    echo -ne '\e[5 q'
#  fi
#}

#zle -N zle-line-init
#zle -N zle-keymap-select

#-- Terminal XTERM Con Cursor Forma De Haz

printf '\033[6 q'

#-- Prompt Personalizado Sin Powerlevel10k Con Export Normal

#if [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "kitty" ]]; then
#export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

#elif [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "xterm" ]]; then
#export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

#fi

LS_COLORS='di=34:fi=37:ln=35:pi=4;33:so=1;34;41:bd=47:cd=1;31:or=31:mi=31:ex=32:*.pdf=36'
export LS_COLORS
