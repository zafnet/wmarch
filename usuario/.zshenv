# ███████╗███████╗██╗  ██╗███████╗███╗   ██╗██╗   ██╗
# ╚══███╔╝██╔════╝██║  ██║██╔════╝████╗  ██║██║   ██║
#   ███╔╝ ███████╗███████║█████╗  ██╔██╗ ██║██║   ██║
#  ███╔╝  ╚════██║██╔══██║██╔══╝  ██║╚██╗██║╚██╗ ██╔╝
# ███████╗███████║██║  ██║███████╗██║ ╚████║ ╚████╔╝ 
# ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ╚═══╝  

#-- CARGAR .ZSHRC DESDE DESDE OTRO DIRECTORIO 
ZDOTDIR="$HOME/.config/zshc/"

. $ZDOTDIR

#-- CARGAR XRESOURCES DESDE OTRO DIRECTORIO
#-- VERIFICANDO QUE ESTE EN UN SHELL INTERACTIVO
if [[ $- != *i* ]]; then
xrdb -I $HOME/.config/xres/Xresources
fi

#-- TAMAÑO UBICACION Y GUARDADO DEL HISTORIAL
HISTFILE="$HOME/.config/zshc/.zsh_history"
#HISTFILE=/dev/null
HISTSIZE=1000
SAVEHIST=1000

#-- VERIFICA QUE ESTE EN UN TERMINAL XTERM
#-- E INICIA XTERM CON SESION DE TMUX CON NOMBRE 0
#[[ $TERM == "xterm-256color" ]] && tmux new -s 0

#-- EXPORTS
export GTK2_RC_FILES="$HOME/.config/pcmanfm/.gtkrc-2.0"

export RANGER_LOAD_DEFAULT_RC= false

export RANGER_CONFIG_DIR="$HOME/.config/ranger/rc.conf"

export BROWSER=firefox

export LC_ALL="es_AR.UTF8"

# export LC_CTYPE=es_AR.UTF8

export FZF_DEFAULT_OPTS=' --height 60% --border
 --color=fg:-1,bg:#2e2727,hl:#745ead
 --color=fg+:#1bf57d,bg+:#525257,hl+:#069c42
 --color=info:#1589d6,prompt:#00d656,pointer:#af5fff
 --color=marker:#ff0000,spinner:#ffec5c,header:#87afaf'

export FZF_DEFAULT_COMMAND='find / -type f 2>/dev/null'

LS_COLORS='di=34:fi=37:ow=34:ln=35:pi=4;33:so=1;34;41:bd=31:cd=1:or=31:mi=31:ex=32:*.pdf=36:*conf=35:*rc=93'
export LS_COLORS
