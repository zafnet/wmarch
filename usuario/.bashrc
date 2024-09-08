# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝

# SI NO ES INTERACTIVA, NO HACER NADA
[[ $- != *i* ]] && return

export RANGER_LOAD_DEFAULT_RC= false
export BROWSER=firefox
export LC_ALL=es_AR.UTF8
export FZF_DEFAULT_OPTS="--height 80% -e --cycle --border --multi --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} es un archivo binario || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden' --bind='alt-e:execute(bat --style=numbers {} || less -f {}),alt-w:toggle-preview,ctrl-p:preview-half-page-down,ctrl-u:preview-half-page-up,ctrl-g:accept'
--color=fg:#97e297,fg+:#dd8d50,bg:#262626,bg+:#262626
--color=hl:#ff759c,hl+:#dfbe17,info:#46e438,marker:#87ff00
--color=prompt:#d7005f,spinner:#40caa0,pointer:#ff0000,header:#f7f6f8
--color=border:#e55454,separator:#94a940,scrollbar:#f44d4d,preview-fg:#48b227
--color=label:#aeaeae,query:#c2b73e
--preview-window="border-rounded" --prompt="" --marker="󰄬" --pointer=""
--separator="" --scrollbar="│" --layout="reverse" --info="right""

LS_COLORS='di=34:fi=37:ow=34:ln=35:pi=4;33:so=1;34;41:bd=31:cd=1:or=31:mi=31:ex=32:*.pdf=36:*conf=35:*rc=93'
export LS_COLORS

source ~/.config/bashc/balias
source ~/.config/bashc/bfunc

# TAMAÑO GUARDADO Y UBICACION DEL HISTORIAL
HISTFILE="$HOME/.config/bashc/.bash_history"
HISTSIZE=1000
SAVEHIST=1000

# PROMPT PERSONALIZADO PARA ROOT Y USUARIO
RED='\[\e[0;1;38;5;196m\]'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
CYAN='\e[0;36m'
RESET='\e[0m'
WHITE='\e[0;37m'

if [[ "$(id -u)" -eq "0" ]]; then
    export PS1="${RED}\u${WHITE}@${CYAN}\H${RESET} ${WHITE}\w ${GREEN}\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)${GREEN}➜ "
elif [[ "$(id -u)" -eq "1000" ]]; then
    export PS1="${GREEN}\u${WHITE}@${CYAN}\H${RESET} ${YELLOW}\w ${GREEN}\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
fi

# OPCIONES DE CONFIGURACION DE BASH
shopt -s nocaseglob
shopt -s autocd
shopt -s dotglob
shopt -s extglob
shopt -s histverify
shopt -s xpg_echo

# IGNORAR MAYÚSCULAS Y MINÚSCULAS AL COMPLETAR CON TAB
bind "set completion-ignore-case on"

# VERIFICAR SI EL  AUTOCOMPLETADO DE BASH ESTA ACTIVADO
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# FUNCION DESCOMPRIMIR
function ex () {
 if [ -z "$1" ]; then
    # Muestra uso si no se les proporciona parametros
    echo "Uso: des <ruta/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [ruta/file_name_2.ext] [ruta/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace)      unace x ./"$n"      ;;
            *)
                         echo "des: '$n' - metodo desconocido para archivo"
                         return 1
                         ;;
          esac
      else
          echo "'$n' -  archivo no existe"
          return 1
      fi
    done
fi
}

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

# TERMINAL XTERM CON CURSOR FORMA GUION BAJO
printf '\033[4 q'

# TERMINAL XTERM CON CURSOR FORMA DE HAZ
#printf '\033[6 q'
