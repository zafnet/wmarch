#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/menuatajos/tmcut/tmcut | rofi -show -dmenu -i -p "Atajos Tmux" -theme ~/.config/rofi/menuatajos/tmcut/tmcut.rasi|sort)"
