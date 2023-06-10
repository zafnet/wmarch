#!/usr/bin/env bash
sxhkd &
pgrep -x sxhkd > /dev/null || sxhkd &
setxkbmap -v es
dunst &
picom &
exec /home/$USER/.config/polybar/launch.sh  &

#feh --bg-fill --randomize --no-fehbg /home/$USER/.wall/*
bash /home/$USER/.local/wallrandom.sh & 

#-- Esc Por Mayus
setxkbmap -option "caps:swapescape"
exec bspwm
