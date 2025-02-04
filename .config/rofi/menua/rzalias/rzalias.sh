#!/bin/bash

# Filtrar y formatear los alias con sus descripciones
cat ~/.config/zshc/zalias | \
awk '
    /^#--/ { 
        print $0; 
        next 
    }
    /^alias / { 
        # Extraer el nombre del alias y la descripción
        match($0, /alias ([^=]+)=/, arr); 
        alias_name = arr[1]; 
        description = gensub(/.*#/, "", "g", $0); 
        print alias_name, description; 
    }
' | \
rofi -show -dmenu -i -p "Alias" -theme ~/.config/rofi/menua/rzalias/rzalias.rasi | sort
