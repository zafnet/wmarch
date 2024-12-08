#!/bin/bash

/bin/bash -c "$(cat ~/.config/zshc/zalias | rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/atajos/ralias/ralias.rasi| sort)"
