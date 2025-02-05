#!/usr/bin/env bash
declare -A URLS

URLS=(
  ["duckduckgo"]="https://duckduckgo.com/?q="
  ["youtube"]="https://www.youtube.com/results?search_query="
)

main() {
  # Solicitar la consulta inicial
  query=$( (echo ) | rofi -dmenu -theme ~/.config/rofi/fsearch/fsearch.rasi -matching fuzzy -location 0 -p " " )

  if [[ -n "$query" ]]; then
    # Verificar si la consulta comienza con 'y'
    if [[ "${query:0:1}" == "y" ]]; then
      # Eliminar la 'y' y buscar en YouTube
      query=${query:1}  # Eliminar la primera letra
      url=${URLS["youtube"]}$query
    else
      # Buscar en DuckDuckGo
      url=${URLS["duckduckgo"]}$query
    fi
    firefox -private-window "$url"
  fi
}

main

exit 0
