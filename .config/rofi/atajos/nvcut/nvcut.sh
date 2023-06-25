#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/nvcut/nvcut | rofi -show -dmenu -i -p "Maps de Nvim y Opciones Nativas" -theme ~/.config/rofi/atajos/nvcut/nvcut.rasi|sort)"
