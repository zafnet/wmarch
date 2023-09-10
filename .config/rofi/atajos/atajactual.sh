#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/sxhkd/sxhkdrc | sed '/^#\([^--]+\|$\)/d' | rofi -show -dmenu -i -p "Atajos Del Sistema En Tiempo Real" -theme ~/.config/rofi/atajos/sxcut/sxcut.rasi | sort)"
