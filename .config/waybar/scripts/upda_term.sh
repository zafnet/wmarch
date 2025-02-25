#!/usr/bin/env bash

# Definir la terminal a usar
TERMINAL="foot"  # Cambia esto a "wezterm", "xterm", o "ghostty" según sea necesario

# Comando de actualización
UPDATE_COMMAND="sudo pacman -Syu; exec bash"

# Iniciar la terminal correspondiente y ejecutar el comando de actualización
case $TERMINAL in
    wezterm)
        wezterm start --class upda_term bash -c "$UPDATE_COMMAND"
        ;;
    foot)
        foot --title "upda_term" -e bash -c "$UPDATE_COMMAND"
        ;;
    xterm)
        xterm -class upda_term -e bash -c "$UPDATE_COMMAND"
        ;;
    ghostty)
        ghostty --class=com.upda_term --gtk-single-instance=true -e "zsh -c 'sudo pacman -Syu --noconfirm; exit'"
        ;;
    *)
        echo "Terminal no soportada: $TERMINAL"
        exit 1
        ;;
esac
