#!/usr/bin/env bash
sxhkd &
exec bspwm
dunst &

#-- Verificando Si sxhkd Se Lanzo y Si No Lanzarlo
pgrep -x sxhkd > /dev/null || sxhkd &

#-- 1.Configurar El Idioma En Español 2.Esc Por Mayus
setxkbmap -v es
setxkbmap -option "caps:swapescape"

#-- 1.Picom Con Ruta Custom y En El Background 2.Lanzando Polybars 3.Lanzando Wallpaper
picom -b --config $HOME/.config/picom/picom.conf

exec /home/$USER/.config/polybar/launch.sh  &

feh --bg-fill --randomize --no-fehbg /home/$USER/.wall/*
