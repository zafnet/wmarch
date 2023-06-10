#!/usr/bin/env bash

/bin/bash -c "$(column ~/.config/rofi/atajos/sxcut/sxcut -t -s $"|" | rofi -show -dmenu -i -p "Atajos Del Sistema" -theme ~/.config/rofi/atajos/sxcut/sxcut.rasi|sort)"
