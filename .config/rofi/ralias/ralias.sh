#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/ralias/ralias | rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/ralias/ralias.rasi|sort)"
