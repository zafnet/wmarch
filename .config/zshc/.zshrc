#  ███████╗░██████╗██╗░░██╗██████╗░░█████╗░
#  ╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗
#  ░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝
#  ██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗
#  ███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝
#  ╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

#-- Exportando dir al path
export PATH="$PATH:$HOME/.local/bin/"

#-- Cargando plugins zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#-- Cargando alias funciones y exports de zsh
source ~/.config/zshc/zalias
source ~/.config/zshc/zfunc

#-- Opciones de zsh
setopt PROMPT_SUBST
setopt interactivecomments
setopt notify
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
setopt completealiases
#setopt AUTO_NAME_DIRS
#setopt APPEND_HISTORY
#setopt EXTENDED_HISTORY
#setopt INC_APPEND_HISTORY
#setopt HIST_EXPIRE_DUPS_FIRST

#-- Func custom git para prompt prompt_subst zsh
git_b() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ *\1/' }

#-- Cargando prompt segun el usuario
if [[ "$(id -u)" -eq "0" ]]; then
PROMPT='%B%F{#f41818}%n%f%F{#ffe647} %f%F{#58d68d}%m%f %f%F{#ffffff}%~%f%F{#18b1f4}$(git_b)%f %F{#f41818}#%f%b '

elif [[ "$(id -u)" -eq "1000" ]]; then
PROMPT='%B%F{#91fe36}%n%f%F{#ffe647} %f%F{#58d68d}%m%f %f%F{#fe820e}%~%f%F{#18b1f4}$(git_b)%f %F{#039915}$%f%b '
fi

#-- Autocompletado moderno de zsh
autoload -Uz compinit
compinit

zstyle ':completion:*' format %F{green}autocompletado %d %f 
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#-- Ctrl + Flechas y supr en zsh
bindkey ";5D" backward-word
bindkey ";5C" forward-word
bindkey ";5"  delete-word
bindkey "\e[3~"   delete-char

bindkey -s '^[t' 'ts^M' #-- A+t LLama al alias ts sesion de tmux sin pedir un nombre
                         
bindkey -s '^[^T' 'tns ' #-- C+A+T LLama al alias tns sesion de tmux pidiendo un nombre
