#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/ralias/ralias | rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/atajos/ralias/ralias.rasi|sort)"
