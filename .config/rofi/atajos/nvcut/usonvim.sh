#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/nvcut/usonvim | rofi -show -dmenu -i -p "Teclas De Nvim" -theme ~/.config/rofi/atajos/nvcut/usonvim.rasi | sort)"
