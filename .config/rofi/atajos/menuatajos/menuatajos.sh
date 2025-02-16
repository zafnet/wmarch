#!/usr/bin/env bash

options="ALIAS  \nNVIM  \nTMUX  \nPOLYBAR \nI3 \nZSHRC \nBASHRC \nPICOM \nNVIME \nROFI \nTMUXE \nBSPWMRC \nXRESOURCES \nSXHKDRC "

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
     "I3 ")
     xterm -e nvim ~/.config/i3/config
      ;;
   "ZSHRC ")
    xterm -e  nvim ~/.config/zshc/.zshrc
      ;;
  "BASHRC ")
     xterm -e nvim ~/.bashrc
      ;;
    "PICOM ")
    xterm -e  nvim ~/.config/picom/picom.conf
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
   "BSPWMRC ")
      xterm -e  nvim ~/.config/bspwm/bspwmrc
        ;;
   "XRESOURCES ")
      xterm -e  nvim ~/.config/xres/Xresources
        ;;
   "SXHKDRC ")
       xterm -e nvim ~/.config/sxhkd/sxhkdrc
        ;;
esac
