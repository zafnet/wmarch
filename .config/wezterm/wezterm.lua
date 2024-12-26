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
config.default_cursor_style = "SteadyUnderline"
config.window_close_confirmation = "NeverPrompt"
config.inactive_pane_hsb = {  -- Color De Los Paneles Sin Usar
      saturation = 0.20,
      brightness = 0.5,
}

-- Colores replicados de xterm
config.colors = {
  foreground = "#FFFFFF",       
  background = "#262626",       
  cursor_bg = "#73c6b6",        
  cursor_border = "#73c6b6",    
  cursor_fg = "#262626",        
  selection_bg = "#e76cf5",     
  selection_fg = "#1e35c9",     
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
  { key = "v", mods = "LEADER", action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }}, -- panel en vertical Alt+b i
  { key = "o", mods = "LEADER", action = act.SplitVertical { domain = 'CurrentPaneDomain' }},   -- panel en vertical Alt+b o
  { key = "x", mods = "LEADER", action = act.CloseCurrentPane { confirm = true }},              -- Cerrar panel actual Alt+b x
  
  -- Moverse Entre Paneles Como Nvim
  { key = "h", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Left") },               
  { key = "j", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Down") },
  { key = "k", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Up") },
  { key = "l", mods = 'CTRL|SUPER', action = act.ActivatePaneDirection("Right") },

  { key = "z", mods = "CTRL|SHIFT", action = act.TogglePaneZoomState }, -- Hacer zoom al panel
  { key = "r", mods = "LEADER", action = act.RotatePanes "Clockwise" }, -- Rota paneles

   -- Redimensionar paneles
    {key="h", mods="ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 1}}}, -- Redimensionar panel hacia la derecha
    {key="l", mods="ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 1}}},  -- Redimensionar panel hacia la izquierda
    {key="k", mods="ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 1}}},    -- Redimensionar panel hacia arriba
    {key="j", mods="ALT|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 1}}},  -- Redimensionar panel hacia abajo

}

return config
