#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob

# Cierra el proceso anterior de swaybg
pkill swaybg

WALL_DIR="$HOME/.wall"
THUMB_DIR="$HOME/.cache/wall_thumbs"
mkdir -p "$THUMB_DIR"

# Comprobar directorios
# - Verifica que exista WALL_DIR
[ -d "$WALL_DIR" ] || { echo "No existe $WALL_DIR"; exit 1; }

# Generar miniaturas
# - Recorre extensiones y genera thumbs normalizados (.png) usando ImageMagick convert
for ext in jpg jpeg png gif; do
  for img in "$WALL_DIR"/*.$ext; do
    [ -e "$img" ] || continue
    base=$(basename "$img")
    name="${base%.*}.png"
    thumb="$THUMB_DIR/$name"
    # - Si no existe el thumb, crear con convert
    [ -f "$thumb" ] || {
      if command -v convert >/dev/null 2>&1; then
        convert "$img" -resize 160x160\> "$thumb"
      else
        echo "ImageMagick 'convert' no encontrado; no se pueden crear miniaturas." >&2
        exit 1
      fi
    }
  done
done

# Lista de nombres (solo etiquetas) para rofi
# - Construye choices[] con los nombres y un mapa thumbmap[name]=ruta_absolute_thumb
choices=()
declare -A thumbmap
for ext in jpg jpeg png gif; do
  for img in "$WALL_DIR"/*.$ext; do
    [ -e "$img" ] || continue
    base=$(basename "$img")
    name="${base%.*}.png"
    # - Obtiene ruta absoluta del thumb si es posible
    thumb="$(readlink -f "$THUMB_DIR/$name" 2>/dev/null || realpath "$THUMB_DIR/$name" 2>/dev/null || printf "%s" "$THUMB_DIR/$name")"
    choices+=("$base")
    thumbmap["$base"]="$thumb"
  done
done

# Comprobar que haya imágenes
[ ${#choices[@]} -gt 0 ] || { echo "No hay imágenes en $WALL_DIR"; exit 1; }

# Crear entrada NUL-sep para rofi (nombre + icon\x1f<ruta>)
# - Esto alimenta rofi con entradas que incluyen la ruta del icono para que -show-icons lo muestre
tmpfile="$(mktemp)"
{
  for name in "${choices[@]}"; do
    thumb="${thumbmap[$name]}"
    # imprimir en formato NUL-sep: <nombre>\0icon\x1f<ruta>\0\n
    printf '%s\0icon\x1f%s\0\n' "$name" "$thumb"
  done
} > "$tmpfile"

# Llamar a rofi leyendo las entradas NUL-sep
# - rofi devolverá la línea seleccionada; la guardamos en fichero temporal y luego extraemos el nombre (hasta el primer NUL)
rofi -dmenu -i -show-icons \
  -theme ~/.config/rofi/temas/rounded-red-dark.rasi \
  -theme-str 'listview { columns: 6; lines: 4; } element { orientation: vertical; } element-icon { size: 150px; } window {width:56%;} ' \
  -p "Elegir Wallpaper" < "$tmpfile" > "${tmpfile}.out"

# Extraer la elección (nombre hasta el primer NUL)
CHOICE=$(tr '\0' '\n' < "${tmpfile}.out" | head -n1 || true)
rm -f "$tmpfile" "${tmpfile}.out"

# Aplicar selección
if [ -n "$CHOICE" ]; then
  # Si quieres mostrar preview antes de aplicar, abre thumbnail con sxiv -t
  selected_thumb="${thumbmap[$CHOICE]}"
  if command -v sxiv >/dev/null 2>&1 && [ -f "$selected_thumb" ]; then
    sxiv -t "$selected_thumb" &
  fi
  # Aplicar wallpaper con swaybg
  swaybg --image "$WALL_DIR/$CHOICE" --mode fill &
else
  echo "No se seleccionó ningún wallpaper."
fi
