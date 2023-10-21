#!/bin/bash

# Directorio donde se encuentran los archivos de configuración de Polybar
poly_dir="$HOME/.config/polybar/"

# Usamos Rofi para mostrar un menú con las opciones disponibles (solo archivos .ini)
poly_elegida=$(ls "$poly_dir" | grep '\.ini$' | rofi -dmenu -i -theme ~/.config/rofi/elebar/elebar.rasi -p "Elegi una barra:")

# Verificar que se haya seleccionado una opción válida
if [ -n "$poly_elegida" ]; then
    # Realizar una copia de seguridad del archivo de configuración actual
    # cp "$HOME/.config/polybar/config.ini" "$HOME/.config/polybar/config.bak"

    # Actualizar el archivo de configuración de Polybar con la nueva opción
    cp "$poly_dir/$poly_elegida" "$HOME/.config/polybar/config.ini"

    # Matar todas las instancias existentes de Polybar
    polybar-msg cmd quit

    # Esperar un breve momento antes de reiniciar Polybar para evitar problemas
    sleep 1

# Reiniciar Polybar con la nueva configuración
     if grep -Eq '^\s*\[bar/.*\]' "$poly_dir/$poly_elegida"; then
        # Si el archivo contiene una o más barras definidas, cargarlas todas
        polybar -r -c "$HOME/.config/polybar/config.ini" &
    else
        # Si el archivo contiene una sola barra, cargar esa barra
         bar_name=$(grep -oP '(?<=^\[bar/).*(?=\])' "$poly_dir/$poly_elegida")
        polybar -r -c "$HOME/.config/polybar/config.ini" "$bar_name" &

    fi
fi
