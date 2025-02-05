#!/usr/bin/env bash

# Leer emojis desde el archivo y mostrarlos en rofi
#selected_emoji=$(cat ~/.config/rofi/emojis/emojis | rofi -dmenu -i -p "Emojis" \
#    -kb-row-up 'alt+k' \
#    -kb-row-down 'alt+j' \
#    -kb-row-left 'alt+h' \
#    -kb-row-right 'alt+l' \
#    -theme ~/.config/rofi/emojis/emojis.rasi | sort | awk '{print $1}' | tr -d '[[:space:]]')

# Copiar el emoji seleccionado al portapapeles
#if [[ -n "$selected_emoji" ]]; then
#    echo -n "$selected_emoji" | xclip -selection clipboard
#fi

# ESTE SIRVE PARA WL-COPY EN WAYLAND
# Leer emojis desde el archivo y mostrarlos en rofi
selected_emoji=$(cat ~/.config/rofi/emojis/emojis | rofi -dmenu -i -p "Emojis" \
     -kb-row-up 'alt+k' \
     -kb-row-down 'alt+j' \
     -kb-row-left 'alt+h' \
     -kb-row-right 'alt+l' \
     -theme ~/.config/rofi/emojis/emojis.rasi | sort | awk '{print $1}' | tr -d '[[:space:]]')

# Copiar el emoji seleccionado al portapapeles
if [[ -n "$selected_emoji" ]]; then
    echo -n "$selected_emoji" | wl-copy
fi
