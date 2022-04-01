#  ███████╗░██████╗██╗░░██╗██████╗░░█████╗░
#  ╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗
#  ░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝
#  ██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗
#  ███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝
#  ╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

#HABILITA EL PROMPT CON POWERLEVEL10K Y .P10K.ZSH DEBE PERMANECER CERCA DE LA PARTE SUPERIOR DE ~/.ZSHRC#
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

#FUENTE DE DONDE CARGA EL POWERLEVEL10K EL TEMA#
#source ~/powerlevel10k/powerlevel10k.zsh-theme

#PARA CUSTOMIZAR EL PROMPT, CORRER `p10k configure` O EDITAR ~/.p10k.zsh#
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#VARIABLE GLOBAL PARA POWERLEVEL10K#
#export ZSH=$HOME/powerlevel10k

#FUENTE DE DONDE CARGA LOS PLUGINS ZSH#
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#--------------------------------------------#
# TAMAÑO GUARDADO Y UBICACION DEL HISTORIAL  #
#--------------------------------------------#
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

#-----------------------------------------------------------------------------------#
#                   PROMPT PERSONALIZADO SIN POWERLEVEL10K                          # 
#-----------------------------------------------------------------------------------#
#if [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "tilix" ]]; then
#export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

#elif [[ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) == "xterm" ]]; then
#export PS1='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f ' 

#fi

git_b() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/{ \1 }/' }

setopt PROMPT_SUBST

if [[ "$(id -u)" -eq "0" ]]; then
PROMPT='%F{red}%n%f%F{#ffe647}%f%F{#ffffff}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f ' 

elif [[ "$(id -u)" -eq "1000" ]]; then
PROMPT='%F{#91fe36}%n%f%F{#ffe647}%f%F{#58d68d}%m%f%F{#0087ff}:%f %F{#fe820e}%~%f %F{red}$(git_b)%f %F{green}%f '

fi

#           

#LS_COLORS='di=32:fi=35:ln=93:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=37:*.rpm=90'
#export LS_COLORS
#--------------------------------------------------------------------------------------

#---------#
#  ALIAS  #
#---------#
alias ll='ls -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias to='touch'
alias nv='nvim'
alias ba='bat'
alias mk='mkdir -v'
alias hi='xed ~/.zsh_history >/dev/null 2>&1  & disown' 
alias tree='lsd --tree'
alias smk='sudo mkdir'
alias cp='cp -v'
alias rm='rm -rv'
alias mv='mv -v'
alias nzs='nvim /home/$USER/.zshrc'
alias nba='nvim /home/$USER/.bashrc'
alias xzs='xed /home/$USER/.zshrc >/dev/null 2>&1  & disown'
alias xba='xed /home/$USER/.bashrc >/dev/null 2>&1  & disown'
alias history='history 0'
alias ins='sudo pacman -S'   
alias ac='sudo pacman -Syu'
alias rem='sudo pacman -Rs' 
alias mir="sudo reflector --latest 5  --sort rate --save /etc/pacman.d/mirrorlist"
alias grep='grep --color=auto'
#alias =' --group-dirs=first'
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

his() { print -z  $(([ -n "$ZSH_NAME" ] && fc -ln) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')}

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

#-------------------------------------------#
# SISTEMA DE AUTOCOMPLETADO MODERNO DE ZSH  #
#-------------------------------------------#
autoload -Uz compinit
compinit

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'autocompletado %d'
zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
#zstyle ':completion:*' file-list all #COMPLETADO INTELIGENTE "TAB" MUESTRA TODAS LAS COINCIDENCIAS DE LO ESCRITO PARA IR AL DIRECTORIO
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} #PARA TOMAR LOS COLORES DE LS_COLORS ACTUALES
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
#eval "$(dircolors -b)"

#-----------------#
# OPCIONES DE ZSH #
#-----------------#
unsetopt MENU_COMPLETE                                      # NO AUTOSELECCIONAR LA PRIMERA AUTOCOMPLETACIÓN
unsetopt FLOW_CONTROL                                       # DESACTIVAR INICIO/PARADA DE CARACTERES EN EL EDITOR DEL SHELL
unsetopt NO_BEEP                                            # SE ESCUCHAN LOS BEEPS DE ERROR
setopt AUTO_CD                                              # DIRECTORIO SIGUIENTE O ANTERIOR SIN "CD" /home/user/$ documentos Y ENTRA EN  --> /home/user/documentos/
setopt ALWAYS_TO_END                                        # MOVER EL CURSOR AL FINAL DE LA PALABRA
setopt AUTO_MENU                                            # MUESTRA EL MENÚ DE COMPLETACIÓN EN SUCESIVOS TABS
#setopt AUTO_NAME_DIRS                                      # LOS PARÁMETROS QUE SE ESTABLECEN CON EL NOMBRE ABSOLUTO DE UN DIRECTORIO SE CONVIERTEN INMEDIATAMENTE EN UN NOMBRE PARA ESE DIRECTORIO
setopt AUTO_LIST                                            # AUTOMÁTICAMENTE MUESTRAS LAS OPCIONES EN COMPLETACIONES AMBIGUAS
setopt AUTO_PARAM_SLASH                                     # AGREGA UN SLASH SI EL PARÁMETRO COMPLETO ES UN DIRECTORIO

setopt COMPLETE_IN_WORD                                     # PERMITIR LA FINALIZACIÓN DESDE DENTRO DE UNA PALABRA/FRASE
setopt CORRECT                                              # INTENTA CORREGIR LOS COMANDOS
setopt PATH_DIRS                                            # BUSCA EN EL PATH PARA COMPLETAR LAS PALABRAS

#setopt APPEND_HISTORY                                      # AGREGA HISTORIAL
#setopt EXTENDED_HISTORY                                    # AGREGA TIMESTAMPS(MARCA DE TIEMPO) AL HISTORIAL DE CUANDO SE ESCRIBIO MODIFICO ETC UN ARCHIVO
#setopt INC_APPEND_HISTORY                                  # HISTORIAL INCREMENTAL
#setopt HIST_EXPIRE_DUPS_FIRST                               # SE ELIMINAN PRIMERO LOS DUPLICADOS MÁS VIEJOS PRIMERO
setopt HIST_IGNORE_ALL_DUPS                                 # NO ALMACENAR DUPLICADOS
setopt HIST_IGNORE_SPACE                                    # ELIMINA DEL HISTORIAL LOS COMANDOS QUE EMPIECEN CON UN ESPACIO
setopt HIST_FIND_NO_DUPS                                    # NO MUESTRA LOS COMANDOS DUPLICADOS
setopt HIST_REDUCE_BLANKS                                   # ELIMINA LOS ESPACIOS EN BLANCO EN LOS COMANDOS GUARDADOS
setopt HIST_VERIFY                                          # NO EJECUTA EL COMANDO, SÓLO LO MUESTRA
setopt SHARE_HISTORY                                        # HISTORIAL COMPARTIDO ENTRE SESIONES

#-------------------------------------#
# MOD DE TECLAS PARA LA TERMINAL ZSH  #
#-------------------------------------#

bindkey ";5D" backward-word   # TECLAS PARA QUE FUNCIONE [CTRL + (<- FLECHA)]
bindkey ";5C" forward-word    # TECLAS PARA QUE FUNCIONE [CTRL + (FLECHA ->)]
bindkey ";5"  delete-word     # [CTRL + DELETE] BORRA LA PALABRA COMPLETA DESDE EL COMIENZO HASTA EL FINAL DE LA MISMA
bindkey "\e[3~"   delete-char     # EL SUPRIMIR BORRE LA LETRA

#---------------#
# OPCIONES NVIM #
#---------------#

# ACTIVAR NVIM EN LA TERMINAL #
#bindkey -v
#export KEYTIMEOUT=1

# ESTOS PARA PODER USAR NVIM EN TERMINAL #
#autoload -Uz edit-command-line
#zle -N edit-command-line

#bindkey -M vicmd 'º' edit-command-line
#bindkey -M viins '^i' vi-cmd-mode
#bindkey -M '^j' vi-cmd-mode

# PARA PODER USAR LAS TECLAS DE DIRECCION COMO EN NVIM PERO EN LA TERMINAL #

#bindkey -M '^h' vi-backward-char
#bindkey -M '^k' vi-up-line-or-history
#bindkey -M '^l' vi-forward-char
#bindkey -M '^j' vi-down-line-or-history

#------------------------------------------------------------#
# NVIM CURSOR EN FORMA DE HAZ PARA DIFERENTES MODOS DE NVIM  #                           
#------------------------------------------------------------#

#function zle-line-init zle-keymap-select {
#  if [ $KEYMAP = vicmd ]; then
#    echo -ne '\e[1 q'
#  elif [[ $KEYMAP == main ]] || [[ $KEYMAP == viins ]] || [[ $KEYMAP = '' ]] || [[ $1 = 'beam' ]]; then
#    echo -ne '\e[5 q'
#  fi
#}

#zle -N zle-line-init
#zle -N zle-keymap-select


#declare -a remo

#remo=(.zcompdump .xsession-errors .lesshst)

#if [[ {$remo[@]} == "false" ]]; then 

#break

#else

#rm "{$remo[@]}"

#fi
