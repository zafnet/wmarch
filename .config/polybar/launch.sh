#!/usr/bin/env bash

#TERMINAR LAS INSTANCIAS DE BARRA QUE YA SE ESTÁN EJECUTANDO
killall -q polybar

#ESPERE HASTA QUE LOS PROCESOS SE HAYAN CERRADO
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar principal &
polybar derecha &
polybar repro &

