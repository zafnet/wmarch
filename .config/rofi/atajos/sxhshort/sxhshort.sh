#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/sxhshort/sxhshort | rofi -show -dmenu -i -p "Atajos Del Sistema" -theme ~/.config/rofi/atajos/sxhshort/sxhshort.rasi|sort)"
