#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/emojis/emos | rofi -show -dmenu -i -p "Emojis" -theme ~/.config/rofi/emojis/emoj.rasi | sort | awk '{print $1}' | tr -d '[[:space:]]' |xclip -selection clipboard)"
