#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/allias/alliases | rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/allias/allias.rasi|sort)"
