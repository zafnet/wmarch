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
     wezterm -e nvim ~/.config/tmux/tmux.conf
    ;;
   "WAYBARCSS ")
     wezterm -e nvim ~/.config/waybar/style.css
    ;;
   "WAYBARCONF ")
     wezterm -e nvim ~/.config/waybar/config
    ;;
   "ZSHRC ")
    wezterm -e  nvim ~/.config/zshc/.zshrc
      ;;
   "BASHRC ")
     wezterm -e nvim ~/.bashrc
      ;;
   "HYPRLAND ")
     wezterm -e  nvim ~/.config/hypr/hyprland.conf
      ;;
   "NVIME ")
     wezterm -e nvim ~/.config/nvim/init.lua
      ;;
   "ROFI ")
     wezterm -e nvim ~/.config/rofi/config.rasi
      ;;
   "XRESOURCES ")
      wezterm -e  nvim ~/.config/Xresources
        ;;
esac
