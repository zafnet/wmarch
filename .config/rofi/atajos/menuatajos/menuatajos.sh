#!/usr/bin/env bash

options="ALIAS  \nNVIM  \nTMUX  \nHYPRLAND \nZSHRC \nBASHRC  \nNVIME \nROFI \nTMUXE \nXRESOURCES "

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/atajos/menuatajos/menuatajos.rasi -p "Ver Atajos o Editar Archivos De:")

case "$selected" in
 "ALIAS  ")
   exec ~/.config/rofi/atajos/ralias/ralias.sh
    ;;
   "NVIM  ")
   exec ~/.config/rofi/atajos/nvcut/nvcut.sh
    ;;
   "TMUX  ")
   exec ~/.config/rofi/atajos/tmcut/tmcut.sh
    ;;
   "POLYBAR ")
     xterm -e nvim ~/.config/polybar/config.ini
      ;;
   "ZSHRC ")
    xterm -e  nvim ~/.config/zshc/.zshrc
      ;;
  "BASHRC ")
     xterm -e nvim ~/.bashrc
      ;;
    "HYPRLAND ")
     xterm -e  nvim ~/.config/hypr/hyprland.conf
      ;;
     "NVIME ")
     xterm -e nvim ~/.config/nvim/init.vim
      ;;
     "ROFI ")
     xterm -e nvim ~/.config/rofi/config.rasi
      ;;
     "TMUXE ")
     xterm -e nvim ~/.config/tmux/tmux.conf
      ;;
   "XRESOURCES ")
      xterm -e  nvim ~/.config/xres/Xresources
        ;;
esac
