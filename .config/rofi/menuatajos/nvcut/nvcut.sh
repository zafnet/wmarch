#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/nvim/lua/maps.lua | rofi -show -dmenu -i -p "Maps de Nvim" -theme ~/.config/rofi/menuatajos/nvcut/nvcut.rasi|sort)"
