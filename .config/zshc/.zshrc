#  ███████╗░██████╗██╗░░██╗██████╗░░█████╗░
#  ╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗
#  ░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝
#  ██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗
#  ███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝
#  ╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

#-- CARGANDO PLUGINS ZSH
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#-- CARGANDO ALIAS FUNCIONES Y EXPORTS DE ZSH
source ~/.config/zshc/zalias
source ~/.config/zshc/zfunc

setopt PROMPT_SUBST

#-- VERIFICANDO Y CARGANDO PROMPT SEGUN EL USUARIO
if [[ "$(id -u)" -eq "0" ]]; then
PROMPT='%F{#f41818}%n%f%F{#ffffff} %f%F{red}%m%f %F{#f4d618}en -> %f%F{#f41897}%~%f%F{#18b1f4}$(git_b)%f %F{#f41818}#%f '

elif [[ "$(id -u)" -eq "1000" ]]; then
PROMPT='%F{#91fe36}%n%f%F{#ffe647} %f%F{#58d68d}%m%f %F{#ff03f0}en -> %f%F{#fe820e}%~%f%F{#18b1f4}$(git_b)%f %F{#039915}$%f '
fi

#-- AUTOCOMPLETADO MODERNO DE ZSH
autoload -Uz compinit
compinit

zstyle ':completion:*' format 'autocompletado %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2

#-- OPCIONES DE ZSH
setopt rm_star_silent
unsetopt MENU_COMPLETE
unsetopt FLOW_CONTROL
unsetopt NO_BEEP
setopt COMPLETE_ALIASES
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
setopt dotglob
#setopt AUTO_NAME_DIRS
#setopt APPEND_HISTORY
#setopt EXTENDED_HISTORY
#setopt INC_APPEND_HISTORY
#setopt HIST_EXPIRE_DUPS_FIRST

#-- CTRL + FLECHAS Y SUPRIMIR EN ZSH
bindkey ";5D" backward-word
bindkey ";5C" forward-word
bindkey ";5"  delete-word
bindkey "\e[3~"   delete-char

#-- A+t LLAMA AL ALIAS TS SESION DE TMUX SIN PEDIR UN NOMBRE
bindkey -s '^[t' 'ts^M'

#-- C+A+T LLAMA AL ALIAS TS SESION DE TMUX PIDIENDO UN NOMBRE
bindkey -s '^[^T' 'ts '
