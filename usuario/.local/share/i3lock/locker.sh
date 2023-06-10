#!/usr/bin/env bash

icon="$HOME/.local/share/i3lock/locked.jpg"

#-- CREAR UN ARCHIVO TEMPORAL
img=$(mktemp /tmp/XXXXXXXXXX.png)

#-- TOMAR UNA CAPTURA DE PANTALLA DE LA IMPORTACIÓN DE ESCRITORIO ACTUAL
import -window root $img 

#-- PIXELAR LA CAPTURA
convert $img -scale 10% -scale 1000% $img

#-- ALTERNATIVAMENTE, DESENFOCA LA CAPTURA DE PANTALLA (¡LENTO!)

#-- convert $img -blur 2,5 $img

#-- AGREGAR LA IMAGEN DE BLOQUEO 

convert $img $icon -gravity center -composite $img

#-- EJECUTAR I3LOCK CON FONDO PERSONALIZADO 
i3lock  -i $img

#-- ELIMINAR EL ARCHIVO TMP
rm $img
