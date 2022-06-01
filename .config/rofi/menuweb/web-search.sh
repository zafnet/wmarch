#!/usr/bin/env bash

#   created:   24.02.2017.-08:59:54
#   revision:  ---
#   version:   1.0

declare -A URLS

URLS=(
  ["google"]="https://www.google.com/search?q="
  ["youtube"]="https://www.youtube.com/results?search_query="
)

# List for rofi
gen_list() {
    for i in "${!URLS[@]}"
    do
      echo "$i"
    done
}

main() {
  # Pass the list to rofi
  platform=$( (gen_list) | rofi  -dmenu -theme ~/.config/rofi/menuweb/menu-web.rasi -matching fuzzy -no-custom -location 0 -p "Buscador > " )

  if [[ -n "$platform" ]]; then
    query=$( (echo ) | rofi -dmenu -theme ~/.config/rofi/menuweb/menu-web.rasi -matching fuzzy -location 0 -p "Pagina > " )

    if [[ -n "$query" ]]; then
      url=${URLS[$platform]}$query
      xdg-open "$url"
    else
      exit
    fi

  else
    exit
  fi
}

main

exit 0
