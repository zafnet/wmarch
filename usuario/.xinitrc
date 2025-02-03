#!/usr/bin/env bash

# Detectar el monitor activo
ACTIVE_MONITOR=$(xrandr | grep " connected" | grep -v "disconnected" | awk '{ print $1 }' | head -n 1)
xrandr --output "$ACTIVE_MONITOR" --mode "1920x1080"  # Establecer la resolución para el monitor activo

#setxkbmap -v es                                       # Configurar el idioma en español
#setxkbmap -option "caps:swapescape"                   # Cambiar Esc por mayus

feh --bg-fill -z --no-fehbg /home/$USER/.wall/* &     # Lanzando Wallpaper
dunst &                                               # Lanzando dunst
xrdb -I $HOME/.config/Xresources                      # Cargando colores en xterm
#picom -b --config $HOME/.config/picom/picom.conf     # Picom Con Ruta Custom En El Background funciona mal en VM

while xsetroot -name "`date` `uptime | sed 's/.*,//'`" # Hora y fecha para barra dwm
do
    sleep 1
done &
exec dwm # Lanzando dwm
