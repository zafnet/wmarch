#!/usr/bin/env bash

read -p $'\e[31mNombre Para Nueva Sesion De Tmux\e[0m: ' seso 

tmux new -s $seso
