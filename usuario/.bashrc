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
export FZF_DEFAULT_OPTS="--height 80% -e --cycle --border --multi --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} es un archivo binario || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='30:80%:wrap,border-rounded,right:hidden' --bind='alt-e:execute(bat --style=numbers {} || less -f {}),alt-o:execute(nvim {}),alt-w:toggle-preview,ctrl-p:preview-half-page-down,ctrl-u:preview-half-page-up,ctrl-g:accept'
--color=fg:#97e297,fg+:#dd8d50,bg:#262626,bg+:#262626
--color=hl:#ff759c,hl+:#dfbe17,info:#46e438,marker:#87ff00
--color=prompt:#d7005f,spinner:#40caa0,pointer:#ff0000,header:#f7f6f8
--color=border:#e55454,separator:#94a940,scrollbar:#f44d4d,preview-fg:#48b227
--color=label:#aeaeae,query:#c2b73e
--preview-window="border-rounded" --prompt="" --marker="󰄬" --pointer=""
--separator="" --scrollbar="│" --layout="reverse" --info="right""

LS_COLORS='di=34:fi=37:ow=34:ln=35:pi=4;33:so=1;34;41:bd=31:cd=1:or=31:mi=31:ex=32:*.pdf=36:*conf=35:*rc=93'
export LS_COLORS

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

# Notificaciones Para Los Alias
DUNS='dunstify -t 4000 -i "$HOME/.config/dunst/icons/actuale.png"'
REFLE='sudo reflector -l 5 -p http,https --sort rate --save /etc/pacman.d/mirrorlist'
BORR='dunstify -t 4000 -i "$HOME/.config/dunst/icons/borrado.png"'
PACM='sudo pacman'

# ALIAS
#- Sistema
alias ll='lsd -lha --group-dirs=first'
alias ls='ls --group-directories-first --color=always -lhFaH'
alias tree='lsd --tree'
alias ba='bat -l java'
alias vf='vifm'
alias to='touch'
alias ins="$PACM -S"
alias ac="$PACM -Syu && $DUNS 'Sistema Actualizado' && exit"
alias acn="$PACM -Syu --noconfirm && $DUNS 'Sistema Actualizado' && exit"
alias acm="$REFLE && $PACM -Syu --noconfirm && $DUNS 'Mirrors y Sistema Actualizados' && exit"
alias mir="$REFLE && $DUNS 'Mirrorlist Actualizado'"
alias al='pacman -Qs'
alias rep='pacman -Ss'
alias rem="$PACM -Rs"
alias rm='rm -rf'
alias ca="rm -rv .cache/* && echo ' ' > $HOME/.config/zshc/.zsh_history && $BORR '.cache y zsh_history Borrados'"
alias cpr='rsync -ah --info=progress2'
alias cp='cp -r'
alias mv='mv -u'
alias mk='mkdir -pv'
alias smk='sudo mkdir -pv'
alias grep='grep --color=auto'
alias xd="xrdb merge ~/.config/xres/Xresources && $DUNS 'Xresources Actualizado'"
alias ch='checkupdates'
alias sz="source ~/.config/zshc/.zshrc && $DUNS 'zshrc Actualizado'"
cm(){
    chmod "$@"
} 
alias zh="echo ' ' > $HOME/.config/zshc/.zsh_history && $BORR 'zsh_history Borrado'"
alias bh="echo ' ' > $HOME/.config/.bash_history && $BORR 'bash_history Borrado'"
bu() {
     sudo fd "$1" / -E undodir -E var -H 2>/dev/null
}
alias ssk='ssh-keygen -t ed25519 -f ~/.ssh/git-key'
alias ip='ip -c'

#- Systemctl
alias sc='sudo systemctl'
alias sce='sudo systemctl status $1'
alias sci='sudo systemctl start $1'
alias sca='sudo systemctl enable $1'
alias scd='sudo systemctl disable $1'
alias scs='sudo systemctl stop $1'
alias scr='sudo systemctl reload $1'
alias scR='sudo systemctl restart $1'

#- Tmux
alias ts='tmux new -s 0'
alias tns='tmux new -s '
alias tl='tmux ls'
alias ta='tmux a -t'
alias tk='tmux kill-session -t'
alias tp='tmux neww -n'

#- Editor
alias nv='nvim'
alias nz='nvim /home/$USER/.config/zshc/.zshrc'
alias nb='nvim /home/$USER/.bashrc'
alias nbh='nvim /home/$USER/.bash_history'
alias nzh='nvim ~/.config/zshc/.zsh_history'

#- Git
alias gs='git status'
alias ga='git add .'
alias gc='git clone'
gm(){
    git commit -m "$*"
}
alias gp='git push origin $1'
alias gb='git branch'
alias gk='git checkout'
alias gu='git pull origin'
alias gt='git tag -a'
alias gf='git fetch'
alias gl="git log --graph --pretty=format:'%C(yellow)%h%Creset -%Cblue%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gd='git diff'
alias gdc='git diff --cached'

#- Docker
alias dps='docker ps'
alias dpa='docker ps -a'
alias di='docker images'
alias dl='docker logs'
alias de='docker exec -it'
alias dst='docker stop'
alias dri='docker rmi'
alias drm='docker rm'

# FUNCIONES PARA FZF
ir() {
    cd "$(fd . / -H -t d 2>/dev/null | fzf --prompt="Ir a La Carpeta: ")" && clear
}
bind -x '"\ei": ir'  # Asigna Alt+i en bash para ir a la carpeta

rf() {
    rm -rf "$(fd . / -H -E undodir 2>/dev/null | fzf --prompt="Borrar Archivo o Directorio: ")" && clear
}
bind -x '"\er": rf'  # Asigna Alt+r para borrar archivo o directorio

nf() {
    sh -c 'fd . / -H -t f -E undodir 2>/dev/null | fzf --prompt="Abrir Con Nvim: "| xargs -r nvim' && clear
}
bind -x '"\en": nf'  # Asigna Alt+n para abrir con nvim en dir raiz

fh() {
    sh -c 'fd . -t f -H -E undodir 2>/dev/null | fzf --prompt="Abrir Con Nvim: "| xargs -r nvim' && clear
}
bind -x '"\eb": fh'  # Asigna Alt+b para abrir con nvim en dir home

ve() {
    fd . / -H -t f -E undodir 2>/dev/null | fzf --prompt="Vista Previa De: "| xargs -r bat && clear
}
bind -x '"\ev": ve'  # Asigna Alt+v para vista previa

cr() {
    fd . /  -H -E undodir 2>/dev/null | fzf --prompt="Copiar Ruta: " | tr -d '\n' | xclip -selection c && clear
}
bind -x '"\ec": cr'  # Asigna Alt+c para copiar ruta

cl() {
    fd . / -H -E undodir 2>/dev/null | fzf --prompt="Copiar en clipboard: " | tr -d '\n' | xclip -sel clipboard && clear
}
bind -x '"\eC": cl'  # Asigna Alt+Shift+c para copiar archivo en clipboard

hi() {
    local selected
    selected=$(history | fzf --tac --prompt="Historial: ")
    if [ -n "$selected" ]; then
        eval "history -s ${selected#* }"  # Agrega el comando seleccionado al historial
        eval "${selected#* }"  # Ejecuta el comando
    fi
}
bind -x '"\eh": hi'  # Asigna Alt+h para buscar en el historial

fk() {
    local pid
    pid=$(ps -ef | sed 1d | fzf --prompt="Eliminar proceso ➤ " --pointer="➤ " --marker="➤ " | awk '{print $2}')
    if [ -n "$pid" ]; then 
        kill -9 "$pid" 
    fi && clear
}
bind -x '"\ek": fk'  # Asigna Alt+k para eliminar proceso

# TERMINAL XTERM CON CURSOR FORMA GUION BAJO
printf '\033[4 q'

# TERMINAL XTERM CON CURSOR FORMA DE HAZ
#printf '\033[6 q'

# INICIAR WM SIN DISPLAY MANAGER
#if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
#  exec Hyprland
#fi
