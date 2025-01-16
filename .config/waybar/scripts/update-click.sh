#!/usr/bin/env bash

# Iniciar wezterm con clase update-terminal y ejecutar el comando de actualizacion
# wezterm start --class update-terminal bash -c "sudo pacman -Syu"

# Iniciar xterm con clase update-terminal y ejecutar el comando de actualizacion
# xterm -class update-terminal -e "bash -c 'sudo pacman -Syu; exec bash'"

# Iniciar ghostty con clase update-terminal y ejecutar el comando de actualizacion
ghostty --class=com.upda_term --gtk-single-instance=true -e "zsh -c 'sudo pacman -Syu --noconfirm; exit'"

