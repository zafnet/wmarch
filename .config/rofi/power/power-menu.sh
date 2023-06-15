#!/usr/bin/env  bash

options="  Apagar\n\n  Reiniciar\n\n  Suspender\n\n  Cerrar sesión\n\n  Lock Screen"
#options="  Apagar\n  Reiniciar\n  Suspender\n  Cerrar sesión\n  Lock Screen"

selected=$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/power/power-menu.rasi -p " opción:")

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
        bspc quit
        ;;
    "  Lock Screen")
       ~/.local/share/i3lock/locker.sh
        ;;
esac
