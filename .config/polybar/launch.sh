#!/usr/bin/env bash

# VERIFICA SI EL COMANDO POLYBAR SE ENCUENTRA EN EL PATH DEL SISTEMA Y ES EJECUTABLE
if type "polybar" >/dev/null; then

# TERMINAR LAS INSTANCIAS DE BARRA QUE YA SE ESTÁN EJECUTANDO
killall -q polybar

# ESPERA HASTA QUE LAS INSTANCIAS ESTÉN COMPLETAMENTE CERRADAS
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# LANZA POLYBAR
polybar --reload principal -c ~/.config/polybar/config.ini &
#polybar --reload derecha  -c ~/.config/polybar/config.ini &
#polybar --reload repro -c ~/.config/polybar/config.ini &

fi
