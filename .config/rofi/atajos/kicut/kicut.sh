#!/usr/bin/env bash

/bin/bash -c "$(cat ~/.config/rofi/atajos/kicut/kicut | rofi -show -dmenu -i -p "Atajos De Kitty" -theme ~/.config/rofi/atajos/kicut/kicut.rasi|sort)"
