#!/usr/bin/env bash

# Extraer y formatear los atajos de teclado de tmux.conf
awk '
    # Procesar líneas que contienen bind o bind-key
    /^bind(-key)?/ {
        # Extraer la combinación de teclas correctamente, ignorando modificadores adicionales como -n, -r, -T
        match($0, /bind(-key)?\s+([^\s]+)\s+/, arr);
        keybinding = arr[2];

        # Eliminar modificadores como -n, -r, -T, etc.
        gsub(/-n|-r|-T/, "", keybinding);

        # Extraer la descripción (lo que hay después del #)
        description = gensub(/.*# /, "", "g", $0);

        # Si hay un atajo y una descripción válida, imprimir el atajo con la descripción
        if (keybinding != "" && description != "") {
            print keybinding, description;
        }
    }
' ~/.config/tmux/tmux.conf | sort | rofi -dmenu -i -p "Atajos Tmux" -theme ~/.config/rofi/menua/tmcut/tmcut.rasi
