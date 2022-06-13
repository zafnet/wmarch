#!/bin/bash

/bin/bash -c "$(cat ~/.config/rofi/alias/aliases | rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/alias/alias.rasi|sort)"
