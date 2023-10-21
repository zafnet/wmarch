#!/usr/bin/env  bash

conexion="qemu:///system"

# Listar todas las máquinas virtuales
domain=$(ls /etc/libvirt/qemu/ | grep '\.xml$' | sed 's/\.xml$//' | rofi -dmenu -i -theme ~/.config/rofi/autovm/autovm.rasi -p "Lanzar VM:")

# Si el usuario cancela la selección, salir
if [ -z "$domain" ]; then
  exit
fi

# Encender la máquina virtual seleccionada
virsh --connect "$conexion" start "$domain"
virt-manager --connect="$conexion" --show-domain-console "$domain"
