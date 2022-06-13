#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/nvimshort/nvimshort | rofi -show -dmenu -i -p "Atajos Nvim " -theme ~/.config/rofi/atajos/nvimshort/nvimshort.rasi|sort)"
