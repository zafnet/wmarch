#!/bin/bash

/bin/bash -c "$(cat ~/.config/zshc/zalias | sed '/^#\([^--]+\|$\)/d' | rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/atajos/ralias/ralias.rasi| sort)"
