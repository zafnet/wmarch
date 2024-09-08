#!/usr/bin/env bash

options="HYPRLAND \nWAYBARCSS \nWAYBARCONF \nALIAS  \nNVIM  \nTMUX  \nTMUXE \nZSHRC \nBASHRC  \nNVIME \nROFI \nXRESOURCES "

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
   "TMUXE ")
     xterm -e nvim ~/.config/tmux/tmux.conf
    ;;
   "WAYBARCSS ")
     xterm -e nvim ~/.config/waybar/style.css
    ;;
   "WAYBARCONF ")
     xterm -e nvim ~/.config/waybar/config
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
     xterm -e nvim ~/.config/nvim/init.lua
      ;;
   "ROFI ")
     xterm -e nvim ~/.config/rofi/config.rasi
      ;;
   "XRESOURCES ")
      xterm -e  nvim ~/.config/xres/Xresources
        ;;
esac
