#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/tmcut/tmcut | rofi -show -dmenu -i -p "Atajos Tmux" -theme ~/.config/rofi/atajos/tmcut/tmcut.rasi|sort)"
