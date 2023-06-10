#!/usr/bin/env bash

# Ruta de la carpeta a monitorear

DIR=~/desc

# Ruta del archivo de registro
LOG_FILE=/tmp/desc.log

# Crear el archivo de registro si no existe
touch $LOG_FILE

while true; do
    # Obtener la lista de archivos en la carpeta Descargas
    files=$(ls $DIR)

    # Buscar archivos con una extensión específica
    completed=$(echo "$files" | grep -E '\.zip$|\.pdf$|\.tar\.gz$|\.docx$|\.iso$')

    # Verificar si hay archivos nuevos completados
    while read -r line; do
        if ! grep -q "^$line$" "$LOG_FILE"; then
            # Si se encontró un archivo completado que no está en el registro, mostrar una notificación con Dunst
            dunstify -u normal "Se ha descargado el archivo $line" -t 5000
            
            # Agregar el archivo al registro
            echo "$line" >> $LOG_FILE
        fi
    done <<< "$completed"

    # Esperar 5 segundos antes de verificar de nuevo
    sleep 5
done
