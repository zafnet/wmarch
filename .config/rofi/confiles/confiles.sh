#!/usr/bin/env bash

options="polybar\ni3\nzshrc\nbashrc\npicom\nnvim\nrofi\ntmux\nbspwmrc\nxresources\nsxhkdrc"
# options="poly i3 zshrc bashrc pick rof tmx bspwmrc Xresources sxhkdrc"

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/confiles/confiles.rasi -p "Configuracion a Editar:")

case "$selected" in
     "polybar")
       xterm -e nvim ~/.config/polybar/config.ini
        ;;
       "i3")
       xterm -e nvim ~/.config/i3/config
        ;;
     "zshrc")
      xterm -e  nvim ~/.config/zshc/.zshrc
        ;;
    "bashrc")
       xterm -e nvim ~/.config/bashc/.bashrc
        ;;
      "picom")
      xterm -e  nvim ~/.config/picom/picom.conf
        ;;
       "nvim")
       xterm -e nvim ~/.config/nvim/init.vim
        ;;
       "rofi")
       xterm -e nvim ~/.config/rofi/config.rasi
        ;;
       "tmux")
       xterm -e nvim ~/.config/tmux/tmux.conf
        ;;
   "bspwmrc")
      xterm -e  nvim ~/.config/bspwm/bspwmrc
        ;;
"xresources")
      xterm -e  nvim ~/.config/xres/Xresources
        ;;
   "sxhkdrc")
       xterm -e nvim ~/.config/sxhkd/sxhkdrc
        ;;
esac
