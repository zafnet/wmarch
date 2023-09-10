#!/usr/bin/env bash

options="ALIAS\nSXHKDRC\nNVIM\nNVNAT\nTMUX"

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/atajos/menuatajos/menuatajos.rasi -p "Ver Atajos De:")

case "$selected" in
 "ALIAS")
   exec ~/.config/rofi/atajos/ralias/ralias.sh
    ;;
   "SXHKDRC")
   exec ~/.config/rofi/atajos/sxcut/sxcut.sh
    ;;
   "NVIM")
   exec ~/.config/rofi/atajos/nvcut/nvcut.sh
    ;;
   "NVNAT")
   exec ~/.config/rofi/atajos/nvcut/nvnat.sh
    ;;
   "TMUX")
   exec ~/.config/rofi/atajos/tmcut/tmcut.sh
    ;;
esac
