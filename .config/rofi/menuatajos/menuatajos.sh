#!/usr/bin/env bash

termin=wezterm

options="HYPRLAND \nWAYBARCSS \nWAYBARCONF \nALIAS  \nNVIM  \nTMUX  \nTMUXE \nZSHRC \nBASHRC \nNVIME \nROFI \nXRESOURCES "

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
     $termin -e nvim ~/.config/tmux/tmux.conf
    ;;
   "WAYBARCSS ")
     $termin -e nvim ~/.config/waybar/style.css
    ;;
   "WAYBARCONF ")
     $termin -e nvim ~/.config/waybar/config
    ;;
   "ZSHRC ")
    $termin -e  nvim ~/.config/zshc/.zshrc
      ;;
   "BASHRC ")
    $termin -e nvim ~/.bashrc
      ;;
   "HYPRLAND ")
     $termin -e  nvim ~/.config/hypr/hyprland.conf
      ;;
   "NVIME ")
     $termin -e nvim ~/.config/nvim/init.lua
      ;;
   "ROFI ")
     $termin -e nvim ~/.config/rofi/config.rasi
      ;;
   "XRESOURCES ")
      $termin -e  nvim ~/.config/Xresources
        ;;
esac
