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

# Exportando dir ~/.local/bin al path
export PATH="$PATH:$HOME/.local/bin/"

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

# Autocompletado moderno de zsh
autoload -Uz compinit
compinit

# Estilos de zsh
zstyle ':completion:*:descriptions' format %F{green}autocompletado %d %f 
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:warnings' format "%B%F{197}No hay coincidencias para:%f %F{202}%d%b"

# Opciones de teclas de zsh
bindkey ";5D" backward-word       # Ctrl + Flechas <- en zsh
bindkey ";5C" forward-word        # Ctrl + Flechas -> en zsh
bindkey ";5"  delete-word         # Tecla backspace en zsh
bindkey "\e[3~" delete-char       # Tecla Supr en zsh
bindkey "^p" up-line-or-history   # Ctrl + p suba en el historial
bindkey "^n" down-line-or-history # Ctrl + n baje en el historial
bindkey "^a" beginning-of-line    # Ctrl + a Ir principio de la linea
bindkey "^e" end-of-line          # Ctrl + e Ir final de la linea
bindkey "^[d" kill-word           # Borrar palabra de izquierda a derecha (Alt + d)
bindkey "^d" delete-char          # Borrar un carácter a la derecha (Ctrl + d)
bindkey "^b" backward-char        # Ir un carácter hacia atrás (Ctrl + b)
bindkey "^[b" backward-word       # Ir una palabra hacia atrás (Alt + b)
bindkey "^[f" forward-char        # Ir un carácter hacia adelante (Alt + f)
bindkey "^f" forward-word         # Ir a la siguiente palabra (Ctrl + f)

# Opciones de teclas para el menu de autocompletado de zsh
bindkey '^[h' backward-char       # Alt + h para menu autocompletado izquierda
bindkey '^[l' forward-char        # Alt + l para menu autocompletado derecha
bindkey '^[m' up-history          # Alt + m para menu autocompletado arriba
bindkey '^[n' down-history        # Alt + n para menu autocompletado abajo

# Atajos para lanzar tmux con o sin nombre de sesion
bindkey -s '^[t' 'ts^M'  # A+t LLama alias ts sesion tmux sin pedir un nombre
bindkey -s '^[^T' 'tns ' # C+A+T LLama alias tns sesion tmux pidiendo un nombre

bindkey -s '¶' 'fzr^M'   # AltGr + r lanza script para borrar directorio o archivos
