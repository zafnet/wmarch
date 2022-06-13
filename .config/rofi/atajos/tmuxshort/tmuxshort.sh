#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/tmuxshort/tmuxshort | rofi -show -dmenu -i -p "Atajos Tmux" -theme ~/.config/rofi/atajos/tmuxshort/tmuxshort.rasi|sort)"
