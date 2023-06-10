#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/nvcut/nvcut | rofi -show -dmenu -i -p "Maps de Nvim " -theme ~/.config/rofi/atajos/nvcut/nvcut.rasi|sort)"
