#!/usr/bin/env bash

# Filtrar y formatear los alias con sus descripciones
cat ~/.config/nvim/lua/maps.lua | \
awk '
    # Ignorar líneas que no contienen mapeos
    /^local map = vim.keymap.set/ { next }
    /^vim.g.mapleader =/ { next }

    # Procesar líneas que contienen mapeos
    {
        # Extraer el maps y la descripción
        match($0, /map\(([^,]+),\s*([^,]+),\s*([^,]+),/, arr); 
        map_name = arr[2]; 
        description = gensub(/.*--/, "", "g", $0); 
        if (map_name != "") {
            print map_name, description; 
        }
    }
' | \
rofi -show -dmenu -i -p "Maps de Nvim lua" -theme ~/.config/rofi/menuatajos/nvcut/nvcut.rasi | sort
