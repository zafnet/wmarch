-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.window_decorations = "RESIZE"
config.force_reverse_video_cursor = true
config.window_background_opacity = 0.95
config.font = wezterm.font("JetbrainsMono Nerd Font",{ weight = "Bold" })
config.font_size = 12
config.hide_tab_bar_if_only_one_tab = true
config.enable_wayland = false
config.warn_about_missing_glyphs = false
config.default_cursor_style = "SteadyUnderline"
config.window_close_confirmation = "NeverPrompt"
config.inactive_pane_hsb = {  -- Color De Los Paneles Sin Usar
      saturation = 1.0,
      brightness = 1.0,
}

-- Mi Esquema De Colores
config.colors = {
 foreground = "#FFFFFF",       
 background = "#262626",       
 cursor_bg = "#73c6b6",        
 cursor_border = "#73c6b6",    
 cursor_fg = "#262626",        
 selection_bg = "#e76cf5",     
 selection_fg = "#1e35c9",     
 split = '#808080',-- Color de división entre paneles
 ansi = {
   "#000000", "#FF0000", "#00FF00", "#FFFF00", 
   "#0000FF", "#FF00FF", "#00FFFF", "#FFFFFF"  
 },
 brights = {
   "#808080", "#FF8080", "#80FF80", "#FFFF80",
   "#8080FF", "#FF80FF", "#80FFFF", "#FFFFFF"
 },
 indexed = {
   [16] = "#ffa066",
   [17] = "#ff5d62",
 },
}

-- Atajos de Teclado
config.leader = { key = "Space", mods = "ALT", timeout_milliseconds = 1000 } -- timeout_milliseconds defaults to 1000 and can be omitted
config.keys = {
    
  -- Dividir Paneles 
  { key = "v", mods = "LEADER", action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }}, -- panel en Vertical 
  { key = "o", mods = "LEADER", action = act.SplitVertical { domain = 'CurrentPaneDomain' }},   -- panel en Horizontal
  { key = "x", mods = "LEADER", action = act.CloseCurrentPane { confirm = true }},              -- Cerrar panel actual

  -- Scroll Por Linea
  { key = 'y', mods = 'CTRL', action = act.ScrollByLine(-1) }, -- Scroll Hacia arriba
  { key = 'o', mods = 'CTRL', action = act.ScrollByLine(1) },  -- Scroll Hacia abajo 

  -- Moverse Entre Paneles
  { key = "h", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Left") },               
  { key = "j", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Right") },
  { key = "r", mods = "LEADER", action = act.RotatePanes "Clockwise" }, -- Rota paneles

   -- Redimensionar paneles
  {key="h", mods="ALT|SHIFT", action = act.AdjustPaneSize{"Left", 1}}, -- Redimensionar panel hacia la derecha
  {key="l", mods="ALT|SHIFT", action = act.AdjustPaneSize{"Right", 1}},-- Redimensionar panel hacia la izquierda
  {key="k", mods="ALT|SHIFT", action = act.AdjustPaneSize{"Up", 1}},   -- Redimensionar panel hacia arriba
  {key="j", mods="ALT|SHIFT", action = act.AdjustPaneSize{"Down", 1}}, -- Redimensionar panel hacia abajo
  {key="w", mods="CTRL|SHIFT", action = act.CloseCurrentTab { confirm = false }}, -- Cerrar pestaña con C-S-w sin preguntar
  
   -- Abre Config wezterm en pestaña nueva
   { key = "e", mods = "CTRL|SHIFT", action = act.SpawnCommandInNewTab ({ cwd = os.getenv("WEZTERM_CONFIG_DIR"), args = { os.getenv("SHELL"), "-c", "nvim $WEZTERM_CONFIG_FILE" }})},

}

return config
