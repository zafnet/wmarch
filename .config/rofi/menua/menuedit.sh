#!/usr/bin/env bash

termin=wezterm

options="HYPRLAND \nWAYCSS \nWAYCONF \nTMUX \nZSHRC \nBASHRC \nNVIM \nROFI \nXRESOURCES "

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/menua/menuedit.rasi -p "Editar Archivos De")

case "$selected" in
   "HYPRLAND ")
     $termin -e  nvim ~/.config/hypr/hyprland.conf
    ;;
   "TMUX ")
     $termin -e nvim ~/.config/tmux/tmux.conf
    ;;
   "WAYCSS ")
     $termin -e nvim ~/.config/waybar/style.css
    ;;
   "WAYCONF ")
     $termin -e nvim ~/.config/waybar/config
    ;;
   "ZSHRC ")
    $termin -e  nvim ~/.config/zshc/.zshrc
      ;;
   "BASHRC ")
    $termin -e nvim ~/.bashrc
      ;;
   "NVIM ")
     $termin -e nvim ~/.config/nvim/init.lua
      ;;
   "ROFI ")
     $termin -e nvim ~/.config/rofi/config.rasi
      ;;
   "XRESOURCES ")
      $termin -e  nvim ~/.config/Xresources
        ;;
esac
