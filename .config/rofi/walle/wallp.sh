#!/usr/bin/env bash

command ls -d ~/.wall/* | rofi -dmenu -theme ~/.config/rofi/walle/wallp.rasi -p "Elegir Wallpaper" | xargs -r feh --bg-fill --no-fehbg
