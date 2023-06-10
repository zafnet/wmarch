#!/usr/bin/env bash

command ls -d ~/.wall/* | rofi -dmenu -theme ~/.config/rofi/walle/wallp.rasi -p "Nuevo Wallpaper: "  ~/.config/rofi/walle/wallp.rasi | xargs -r feh --bg-fill --no-fehbg
