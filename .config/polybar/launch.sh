#!/usr/bin/env bash

# Verifica Si El Comando Polybar Se Encuentra En El Path Del Sistema Y Es Ejecutable
if type "polybar" >/dev/null; then

#Terminar Las Instancias De Barra Que Ya Se Están Ejecutando
killall -q polybar

# Espera hasta que las instancias estén completamente cerradas
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lanza Polybar

# Barra Dividida En 3
polybar --reload principal -c ~/.config/polybar/config.ini &
polybar --reload derecha  -c ~/.config/polybar/config.ini &
polybar --reload repro -c ~/.config/polybar/config.ini &

fi
