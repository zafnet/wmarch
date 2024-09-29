#  ███████╗░██████╗██╗░░██╗██████╗░░█████╗░
#  ╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗
#  ░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝
#  ██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗
#  ███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝
#  ╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

HISTFILE="$HOME/.config/zshc/.zsh_history" # ubicacion de guardado de historial 
HISTSIZE=5000                              # tamaño del historial cuantas lineas puedo subir con scroll 
SAVEHIST=5000                              # cuantas lineas se almacenan en el historial
HISTDUP=erase                              # Borrar duplicados en el archivo del historial

#export HISTORY_IGNORE="(ls|ll|pwd|exit|sudo reboot|history|cd|cd *|cd -|cd ..)" # No guardar el hist al lanzar otra term

export FZF_DEFAULT_OPTS="--height 80% -e --cycle --border --multi --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} es un archivo binario || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden' --bind='alt-e:execute(bat --style=numbers {} || less -f {}),alt-w:toggle-preview,ctrl-p:preview-half-page-down,ctrl-u:preview-half-page-up,ctrl-g:accept'
--color=fg:#97e297,fg+:#dd8d50,bg:#262626,bg+:#262626
--color=hl:#ff759c,hl+:#dfbe17,info:#46e438,marker:#87ff00
--color=prompt:#d7005f,spinner:#40caa0,pointer:#ff0000,header:#f7f6f8
--color=border:#e55454,separator:#94a940,scrollbar:#f44d4d,preview-fg:#48b227
--color=label:#aeaeae,query:#c2b73e
--preview-window="border-rounded" --prompt="" --marker="󰄬" --pointer=""
--separator="" --scrollbar="│" --layout="reverse" --info="right""

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zshc/zalias
source ~/.config/zshc/zfunc

# Opciones de zsh
setopt PROMPT_SUBST interactivecomments notify rm_star_silent COMPLETE_ALIASES AUTO_CD ALWAYS_TO_END AUTO_LIST 
setopt AUTO_PARAM_SLASH COMPLETE_IN_WORD CORRECT PATH_DIRS HIST_IGNORE_ALL_DUPS HIST_IGNORE_SPACE HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS HIST_VERIFY SHARE_HISTORY dotglob completealiases
unsetopt MENU_COMPLETE FLOW_CONTROL NO_BEEP
#setopt AUTO_NAME_DIRSA PPEND_HISTORY EXTENDED_HISTORY INC_APPEND_HISTORY HIST_EXPIRE_DUPS_FIRST

# Función personalizada para mostrar la rama de Git
git_b() {
    # Verificar si estamos en un repositorio Git
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        # Obtener el nombre de la rama actual
        branch=$(git branch 2> /dev/null | grep '*' | sed 's/* //')

        # Verificar si hay cambios en el repositorio
        if [[ -n $(git status --porcelain 2> /dev/null) ]]; then
            echo "  $branch %F{#f33334} %f"  # Ícono para repositorio sucio
        else
            echo "  $branch"
        fi
    else
        # No estamos en un repositorio Git, no mostrar nada
        echo ""
    fi
}

# Función para establecer el prompt según si estamos en Tmux
set_prompt() {
    if [[ -z "$TMUX" ]]; then
        # Cambia el prompt cuando estás en Tmux
        if [[ "$(id -u)" -eq "0" ]]; then
            PROMPT='%B%F{#f41818}%n%f%F{#ffe647} %f%F{#58d68d}%m%f %f%F{#ffffff}%~%f%F{#18b1f4}$(git_b)%f %F{#f41818}#%f%b ' # Prompt para root fuera de Tmux
        elif [[ "$(id -u)" -eq "1000" ]]; then
            PROMPT='%B%F{#91fe36}%n%f%F{#ffe647} %f%F{#58d68d}%m%f %f%F{#fe820e}%~%f%F{#18b1f4}$(git_b)%f %F{#039915}%f%b ' # Prompt para usuario normal fuera de Tmux
        fi
    else
        # Prompt normal cuando no estás en Tmux
        if [[ "$(id -u)" -eq "0" ]]; then
            PROMPT='%B%F{#f41818}%n%f%F{#ffe647} %f%F{#58d68d}%m%f %f%F{#ffffff}%~%f%F{#18b1f4}$(git_b)%f %F{#f41818}#%f%b ' # Prompt para root en Tmux
        elif [[ "$(id -u)" -eq "1000" ]]; then
            PROMPT='%B%F{#ff0036}%n%f%F{#ffe647} %f%F{#3edfff}%m%f %f%F{#f2c2c2}%~%f%F{#ca50fc}$(git_b)%f %B%F{#0fff15} %f%b ' # Prompt para usuario normal en Tmux
        fi
    fi
}
set_prompt # Llama a la función para establecer el prompt

autoload -Uz compinit # Autocompletado moderno de zsh
compinit

zstyle ':completion:*:descriptions' format %F{green}autocompletado %d %f 
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:warnings' format "%B%F{197}No hay coincidencias para:%f %F{202}%d%b"

bindkey ";5D" backward-word # Ctrl + Flechas <- en zsh
bindkey ";5C" forward-word  # Ctrl + Flechas -> en zsh
bindkey ";5"  delete-word   # Tecla backspace en zsh
bindkey "\e[3~" delete-char # Tecla Supr en zsh

bindkey '^[h' backward-char # Alt + h para menu autocompletado izquierda
bindkey '^[l' forward-char  # Alt + l para menu autocompletado derecha
bindkey '^[m' up-history    # Alt + m para menu autocompletado arriba
bindkey '^[n' down-history  # Alt + n para menu autocompletado abajo

bindkey -s '^[t' 'ts^M' # A+t LLama alias ts sesion tmux sin pedir un nombre
                         
bindkey -s '^[^T' 'tns ' # C+A+T LLama alias tns sesion tmux pidiendo un nombre
