# ███████╗███████╗██╗  ██╗███████╗███╗   ██╗██╗   ██╗
# ╚══███╔╝██╔════╝██║  ██║██╔════╝████╗  ██║██║   ██║
#   ███╔╝ ███████╗███████║█████╗  ██╔██╗ ██║██║   ██║
#  ███╔╝  ╚════██║██╔══██║██╔══╝  ██║╚██╗██║╚██╗ ██╔╝
# ███████╗███████║██║  ██║███████╗██║ ╚████║ ╚████╔╝ 
# ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝  ╚═══╝  

# CARGAR .ZSHRC DESDE OTRO DIRECTORIO 
ZDOTDIR="$HOME/.config/zshc/"
#. $ZDOTDIR

# EXPORTS
export GTK2_RC_FILES="$HOME/.config/pcmanfm/.gtkrc-2.0"
export BROWSER=firefox
export MANPAGER="nvim +Man!"
export LC_ALL=es_AR.UTF8
# export RANGER_LOAD_DEFAULT_RC= false
# export RANGER_CONFIG_DIR="$HOME/.config/ranger/rc.conf"
# export XCOMPOSEFILE="$HOME/.config/.XCompose"

# EXPORTS DE FZF
export FZF_DEFAULT_OPTS="--height 80% -e --cycle --border --multi --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} es un archivo binario || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='30:80%:wrap,border-rounded,right:hidden' --bind='alt-e:execute(bat --style=numbers {} || less -f {}),alt-o:execute(nvim {}),alt-w:toggle-preview,ctrl-p:preview-half-page-down,ctrl-u:preview-half-page-up,ctrl-g:accept'
--color=fg:#97e297,fg+:#dd8d50,bg:-1,bg+:-1
--color=hl:#ff759c,hl+:#dfbe17,info:#46e438,marker:#87ff00
--color=prompt:#d7005f,spinner:#40caa0,pointer:#ff0000,header:#f7f6f8
--color=border:#e55454,separator:#94a940,scrollbar:,gutter:-1,preview-fg:#48b227
--color=label:#aeaeae,query:#c2b73e
--preview-window="border-rounded" --prompt="" --marker="󰄬" --pointer=""
--separator="" --scrollbar="│" --layout="reverse" --info="right""

export FZF_DEFAULT_COMMAND='fd . / -H -tf -td -E undodir'

# CARGAR XRESOURCES DESDE OTRO DIRECTORIO
if [[ $- != *i* ]]; then
xrdb -I $HOME/.config/xres/Xresources
fi

# COLORES DE 'MAN'
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
