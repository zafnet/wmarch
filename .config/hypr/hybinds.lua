-- VARIABLES PARA APPS Y COMANDOS COMPLEJOS
local terminal = "foot"
local fileManager = "pcmanfm"
local fileMater = "yazi"
local menu = "rofi -show drun"
local reprod = "cmus"
local edit = "nvim"
local browser = os.getenv("BROWSER")
local browser2 = os.getenv("BROWSER2")

local actualiza = "notify-send -t 3000 -i '" .. os.getenv("HOME") .. "/.config/dunst/icons/actuale.png' 'Actualizaciones Pendientes' \"$(checkupdates | sed 's/\\x1b\\[[0-9;]*m//g')\""
local calendari = "notify-send -t 4000 -i '" .. os.getenv("HOME") .. "/.config/dunst/icons/calendar.png' \"$(date '+%a %b %d %Y %H:%M%p')\""
local captur = 'mkdir -p "$HOME/captura" && grim - | swappy -f - -o "$HOME/captura/$(date "+%d-%m-%Y-%H-%M-%S").png" && dunstify -t 4000 -i "' .. os.getenv("HOME") .. '/.config/dunst/icons/belly.png" "Pantalla Completa Capturada"'
local capturs = 'mkdir -p "$HOME/captura" && grim -g "$(slurp)" - | swappy -f - -o "$HOME/captura/$(date "+%d-%m-%Y-%H-%M-%S").png" && dunstify -t 4000 -i "' .. os.getenv("HOME") .. '/.config/dunst/icons/belly.png" "Captura De Pantalla"'

local Mod = "SUPER"

-- COMBINACIONES DE TECLAS
hl.bind(Mod .. " + q", hl.dsp.window.close(), { description = "Cerrar ventana" })
hl.bind(Mod .. " + SHIFT + q", hl.dsp.exit(), { description = "Salir de Hyprland" })

-- Lanzando aplicaciones
hl.bind(Mod .. " + c", hl.dsp.exec_cmd(terminal), { description = "Abrir terminal" })
hl.bind(Mod .. " + a", hl.dsp.exec_cmd(fileManager), { description = "Abrir gestor de archivos" })
hl.bind(Mod .. " + v", hl.dsp.exec_cmd(menu), { description = "Abrir rofi drun" })
hl.bind(Mod .. " + m", hl.dsp.exec_cmd(terminal .. ' --title "com.cmus" -e ' .. reprod), { description = "Abrir cmus" })
hl.bind(Mod .. " + o", hl.dsp.exec_cmd("obsidian"), { description = "Abrir Obsidian" })
hl.bind(Mod .. " + b", hl.dsp.exec_cmd(terminal .. " -e " .. fileMater), { description = "Abrir yazi" })
hl.bind(Mod .. " + n", hl.dsp.exec_cmd(terminal .. " -e " .. edit), { description = "Abrir nvim" })
hl.bind(Mod .. " + d", hl.dsp.exec_cmd("discord"), { description = "Abrir Discord" })
hl.bind(Mod .. " + f", hl.dsp.exec_cmd(browser), { description = "Abrir navegador" })
hl.bind(Mod .. " + SHIFT + f", hl.dsp.exec_cmd(browser2 .. " -private-window"), { description = "Abrir navegador privado de firefox" })
hl.bind(Mod .. " + g", hl.dsp.exec_cmd(browser), { description = "Abrir navegador (2)" })

-- Rofi customs
hl.bind("CTRL + 1", hl.dsp.exec_cmd("~/.config/rofi/hbinds/hbinds"), { description = "Rofi Atajos de teclas actuales" })
hl.bind("CTRL + 2", hl.dsp.exec_cmd("~/.config/rofi/marcadores/marcadores.sh youtube"), { description = "Rofi marcadores (YouTube)" })
hl.bind("CTRL + 3", hl.dsp.exec_cmd("~/.config/rofi/marcadores/marcadores.sh"), { description = "Rofi marcadores" })
hl.bind("CTRL + 4", hl.dsp.exec_cmd("~/.local/bin/kill-autowaybar"), { description = "Kill autowaybar" })
hl.bind("CTRL + 5", hl.dsp.exec_cmd("~/.config/rofi/menua/rzalias/rzalias.sh"), { description = "Rofi rzalias" })
hl.bind("CTRL + 6", hl.dsp.exec_cmd("~/.config/rofi/wallsw/wallsw.sh"), { description = "Rofi wallpapers" })
hl.bind("CTRL + 7", hl.dsp.exec_cmd("~/.config/rofi/menua/menuedit.sh"), { description = "Rofi menu edit" })
hl.bind("CTRL + 8", hl.dsp.exec_cmd("~/.config/rofi/menua/atajos/atajos"), { description = "Rofi atajos" })
hl.bind("CTRL + 9", hl.dsp.exec_cmd("~/.config/rofi/vmauto/vmauto.sh"), { description = "Rofi vmauto" })
hl.bind("CTRL + 0", hl.dsp.exec_cmd("~/.config/rofi/fsearch/fsearch.sh"), { description = "Rofi fsearch" })
hl.bind("CTRL + apostrophe", hl.dsp.exec_cmd(actualiza), { description = "Actualizaciones pendientes" })
hl.bind(Mod .. " + F5", hl.dsp.exec_cmd("/run/alma/hrestconf"), { description = "Restaurar configuración" })
hl.bind(" + MOD5 + p", hl.dsp.exec_cmd("~/.config/rofi/power/powm.sh"), { description = "Power menu" })
hl.bind(Mod .. " + p", hl.dsp.exec_cmd("~/.config/rofi/grabacion"), { description = "Grabación" })
hl.bind(Mod .. " + period", hl.dsp.exec_cmd("~/.config/rofi/emojis/emojis.sh"), { description = "Emoji picker" })
hl.bind(Mod .. " + w", hl.dsp.exec_cmd("rofi -show window"), { description = "Rofi window switcher" })
hl.bind("F1", hl.dsp.exec_cmd(calendari), { description = "Calendario" })

-- VOLUMEN PULSEAUDIO
hl.bind(Mod .. "+ F3", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +1000"))
hl.bind(Mod .. "+ F2", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -1000"))
hl.bind(Mod .. "+ F4", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))

-- MANEJO DE NODOS Y VENTANAS
-- Move focus with Mod + keys
hl.bind(Mod .. " + h ",  hl.dsp.focus({ direction = "left" }))
hl.bind(Mod .. "  + l ", hl.dsp.focus({ direction = "right" }))
hl.bind(Mod .. "  + k ",    hl.dsp.focus({ direction = "up" }))
hl.bind(Mod .. "  + j ",  hl.dsp.focus({ direction = "down" }))

-- Formato de las ventanas
hl.bind(Mod .. " + t", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(Mod .. " + s", hl.dsp.window.pseudo())
hl.bind(Mod .. " + e", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SHIFT + ALT + f", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Cambiar el tamaño de la ventana activa con letras (resize relativo)
hl.bind(Mod .. " + ALT + H", hl.dsp.window.resize({ x = -36, y = 0, relative = true }), { repeating = true })
hl.bind(Mod .. " + ALT + L", hl.dsp.window.resize({ x =  36, y = 0, relative = true }), { repeating = true })
hl.bind(Mod .. " + ALT + J", hl.dsp.window.resize({ x = 0, y =  36, relative = true }), { repeating = true })
hl.bind(Mod .. " + ALT + K", hl.dsp.window.resize({ x = 0, y = -36, relative = true }), { repeating = true })

-- Mover la ventana activa flot con letras
hl.bind("CONTROL + ALT + h", hl.dsp.window.move({ x = -100, y = 0, relative = true }))
hl.bind("CONTROL + ALT + l", hl.dsp.window.move({ x =  100, y = 0, relative = true }))
hl.bind("CONTROL + ALT + j", hl.dsp.window.move({ x = 0, y =  100, relative = true }))
hl.bind("CONTROL + ALT + k", hl.dsp.window.move({ x = 0, y = -100, relative = true }))

-- Intercambiar ventana activa a la D,A,A,I
hl.bind("CONTROL + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
hl.bind("CONTROL + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
hl.bind("CONTROL + SHIFT + j", hl.dsp.window.move({ direction = "down" }))
hl.bind("CONTROL + SHIFT + k", hl.dsp.window.move({ direction = "up" }))

-- Mueve ventana a un workspace sin ir a el
for i = 1, 6 do
  hl.bind("SUPER + ALT + " .. tostring(i), hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Mueve la ventana activa a un espacio de trabajo con Mod + [0-9].
for i = 1, 7 do
    local key = i % 7 -- Si queremos 6 hay que colocar 7 WS
    hl.bind(Mod .. " + " .. key, hl.dsp.focus({ workspace = i}))
    hl.bind(Mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

--SCRATCHPAD
hl.bind("SUPER + comma", hl.dsp.window.move({ workspace = "special:magic" } , { description = "Enviar workspace especial (scratchpad)" }))
hl.bind("SUPER + minus", hl.dsp.workspace.toggle_special("magic", { description = "mostrar workspace especial (scratchpad)" })) 

-- MOD SCROLL 
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" } , { description = "Moverse por los espacios con Mod + scroll" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" } , { description = "Moverse por los espacios con Mod + scroll" }))

-- CAMBIAR TAMAÑO DE LAS VENTANAS CON MOD + MOUSE Y ARRASTRANDO
hl.bind("SUPER  + mouse:272", hl.dsp.window.drag(), { mouse = true } , { description = "Cambiar tamaño de las ventanas con mod + LMB/RMB y arrastrando" })
hl.bind("SUPER  + mouse:273", hl.dsp.window.resize(), { mouse = true } , { description = "Cambiar tamaño de las ventanas con mod + LMB/RMB y arrastrando" })
