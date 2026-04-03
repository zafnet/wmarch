#!/usr/bin/env  bash

options="\n\n\n\n"

selected=$(echo -e "$options" | rofi -dmenu -p  "Qué quieres $USER" -i -theme ~/.config/rofi/temas/powm.rasi "")

case $selected in
    "")
     systemctl poweroff
        ;;
    "")
     systemctl reboot
        ;;
    "")
     systemctl suspend
        ;;
    "")
     hyprctl dispatch exit 1
        ;;
    "")
     hyprlock
        ;;
esac
