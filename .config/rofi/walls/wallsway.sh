#!/usr/bin/env bash

# Cierra el proceso anterior de swaybg
pkill swaybg

# Selecciona un wallpaper usando rofi
WALLPAPER=$(ls -d ~/.wall/* | rofi -dmenu -theme ~/.config/rofi/walls/wallsway.rasi -p "Elegir Wallpaper")

# Verifica si se seleccionó un wallpaper
if [ -n "$WALLPAPER" ]; then
    # Cambia el fondo de pantalla usando swaybg
    swaybg --image "$WALLPAPER" --mode fill
else
    echo "No se seleccionó ningún wallpaper."
fi
