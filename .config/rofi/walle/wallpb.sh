#!/usr/bin/env bash

WALLPAPER=$(command ls -d ~/.wall/*| sed 's|.*/||' | rofi -dmenu -theme ~/.config/rofi/walle/wallpb.rasi -p "Elegir Wallpaper" | xargs -r)

# Verifica si se seleccionó un wallpaper
if [ -n "$WALLPAPER" ]; then
    # Cambia el fondo de pantalla usando swaybg
     feh --bg-fill --no-fehbg $HOME/.wall/"$WALLPAPER"
else
    echo "No se seleccionó ningún wallpaper."
fi

