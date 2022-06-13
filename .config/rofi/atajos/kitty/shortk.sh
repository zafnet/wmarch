#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/kitty/shortk | rofi -show -dmenu -i -p "Atajos De Kitty" -theme ~/.config/rofi/atajos/kitty/shortk.rasi|sort)"
