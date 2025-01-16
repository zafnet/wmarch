#!/usr/bin/env bash

options="HYPRLAND \nWAYBARCSS \nWAYBARCONF \nALIAS  \nNVIM  \nTMUX  \nTMUXE \nZSHRC \nBASHRC  \nNVIME \nROFI \nXRESOURCES "

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/menuatajos/menuatajos.rasi -p "Ver Atajos o Editar Archivos De:")

case "$selected" in
   "ALIAS  ")
   exec ~/.config/rofi/menuatajos/rzalias/rzalias.sh
    ;;
   "NVIM  ")
   exec ~/.config/rofi/menuatajos/nvcut/nvcut.sh
    ;;
   "TMUX  ")
   exec ~/.config/rofi/menuatajos/tmcut/tmcut.sh
      ;;
   "TMUXE ")
     ghostty -e nvim ~/.config/tmux/tmux.conf
    ;;
   "WAYBARCSS ")
     ghostty -e nvim ~/.config/waybar/style.css
    ;;
   "WAYBARCONF ")
     ghostty -e nvim ~/.config/waybar/config
    ;;
   "ZSHRC ")
    ghostty -e  nvim ~/.config/zshc/.zshrc
      ;;
   "BASHRC ")
     ghostty -e nvim ~/.bashrc
      ;;
   "HYPRLAND ")
     ghostty -e  nvim ~/.config/hypr/hyprland.conf
      ;;
   "NVIME ")
     ghostty -e nvim ~/.config/nvim/init.lua
      ;;
   "ROFI ")
     ghostty -e nvim ~/.config/rofi/config.rasi
      ;;
   "XRESOURCES ")
      ghostty -e  nvim ~/.config/Xresources
        ;;
esac
