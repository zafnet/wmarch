#!/usr/bin/env  bash

options="  Apagar\n  Reiniciar\n  Suspender\n  Cerrar sesión\n  Lock Screen"

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/power/powm.rasi -p " opción:")

case $selected in
    "  Apagar")
        systemctl poweroff
        ;;
    "  Reiniciar")
        systemctl reboot
        ;;
    "  Suspender")
        systemctl suspend
        ;;
    "  Cerrar sesión")
        hyprctl dispatch exit 1
        ;;
    "  Lock Screen")
       hyprlock
        ;;
esac
