#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/nvim/lua/maps.lua | rofi -show -dmenu -i -p "Maps de Nvim" -theme ~/.config/rofi/atajos/nvcut/nvcut.rasi|sort)"
