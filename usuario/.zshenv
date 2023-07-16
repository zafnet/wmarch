#-- Cambiando Directorio ZDOTDIR Para Cargar .zshrc Desde Directorio .config 
ZDOTDIR="$HOME/.config/zshc/"

. $ZDOTDIR

#-- Carga Configuracion De Pcmanfm Desde Otra Ubicacion
export GTK2_RC_FILES="$HOME/.config/pcmanfm/.gtkrc-2.0"

#-- Cargar Xresources Desde .config
if [[ $- != *i* ]]; then
xrdb -I $HOME/.config/xres/Xresources
fi

#-- Inicia Xterm Con Sesion De Tmux Con Nombre sesion
#[[ $TERM == "xterm-256color" ]] && tmux new -s sesion

#-- Tamaño Ubicacion y Guardado Del Historial
HISTFILE="$HOME/.config/zshc/.zsh_history"
#HISTFILE=/dev/null
HISTSIZE=1000
SAVEHIST=1000

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

#-- Mod De Teclas Para La Terminal ZSH
bindkey ";5D" backward-word
bindkey ";5C" forward-word
bindkey ";5"  delete-word
bindkey "\e[3~"   delete-char

#-- Alias tmx Con La Ruta Al Script Para Que No Me Muestre La Ruta Del Script tmxs.sh En La Terminal
#-- Alt+b Para Lanzar Script tmxs.sh Crear Sesion De Tmux Pidiendo Un Nombre
#-- ^M Asi Es Como Se Hace Para Que Haga Un Enter y Cuando Lo Ejecuta Lo Inserte En La Terminal

alias tmx='~/.config/tmux/tmxs.sh'
bindkey -s '^[P' 'tmx^M'

#-- Para Que Imprima El Acento En Kitty ^
#bindkey -s '^y' '^'
