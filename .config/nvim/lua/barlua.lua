-- Visibilidad De La Barra De Estado valores posibles 0,1,2
vim.opt.laststatus = 2

-- Función para definir grupos de resaltado
local function set_highlight(groups)
  for group, properties in pairs(groups) do
    vim.api.nvim_set_hl(0, group, properties)
  end
end

-- Definir Colores y Estilos Para Modos en una tabla
local highlights = {
  NormalColor   = { bg = "#8bd88b", fg = "#000000", italic = true },
  InsertColor   = { bg = "#3498db", fg = "#000000", italic = true },
  VisualColor   = { bg = "#9d65f8", fg = "#000000", italic = true },
  VlColor       = { bg = "#ff5f00", fg = "#000000", italic = true },
  VbColor       = { bg = "#ff005f", fg = "#000000", italic = true },
  ReplaceColor  = { bg = "#d3538f", fg = "#000000", italic = true },
  TerminalColor = { bg = "#e74c3c", fg = "#000000", italic = true },
  CommandColor  = { bg = "#229954", fg = "#000000", italic = true },

  -- Colores Flechas Para Modos
  flen  = { bg = "NONE", fg = "#8bd88b" },
  flei  = { bg = "NONE", fg = "#3498db" },
  flev  = { bg = "NONE", fg = "#9d65f8" },
  flevl = { bg = "NONE", fg = "#ff5f00" },
  flevb = { bg = "NONE", fg = "#ff005f" },
  fler  = { bg = "NONE", fg = "#d3538f" },
  flec  = { bg = "NONE", fg = "#229954" },
  flet  = { bg = "NONE", fg = "#e74c3c" },

  -- Colores Barra Lado Derecho
  rutadarch = { bg = "#262626",    fg = "#00d75f", italic = true },
  ln        = { bg = "#d3538f", fg = "#000000", italic = true },
  co        = { bg = "#229954", fg = "#000000", italic = true },
  buf       = { bg = "#ff5f00", fg = "NONE",    italic = true },
  ft        = { bg = "#e74c3c", fg = "NONE", italic = true },

  -- Colores Flechas Barra Lado Derecho
  fleft  = { bg = "#262626",    fg = "#e74c3c" },
  fleb   = { bg = "#e74c3c", fg = "#ff5f00" },
  fleln =  { bg = "#ff5f00", fg = "#d3538f" },
  fleco  = { bg = "#d3538f", fg = "#229954" } 
}

set_highlight(highlights)

-- Definir Modo Actual De La Barra
local current_mode = {
  n  = { name = "NORMAL", hl = "NormalColor", arrow = "flen" },
  i  = { name = "INSERT", hl = "InsertColor", arrow = "flei" },
  v  = { name = "VISUAL", hl = "VisualColor", arrow = "flev" },
  V  = { name = "V-LINE", hl = "VlColor", arrow = "flevl" },
  ["\22"] = { name = "V-BLOCK", hl = "VbColor", arrow = "flevb" }, -- <C-v>
  R  = { name = "REPLACE", hl = "ReplaceColor", arrow = "fler" },
  c  = { name = "COMANDO", hl = "CommandColor", arrow = "flec" },
  t  = { name = "TERMINAL", hl = "TerminalColor", arrow = "flet" }
}

-- get_statusline Para capturar Estado De La Barra
_G.get_statusline = function()
  local mode = vim.fn.mode()
  local mode_info = current_mode[mode] or { name = "UNKNOWN", hl = "NormalColor", arrow = "flen" }

  -- Verificar si el archivo tiene una extensión
  local filetype = vim.bo.filetype
  local filetype_section = filetype ~= "" and string.format("%%#fleft#%%#ft# %s", filetype) or ""

  return string.format(
    "%%#%s#  %s %%#%s# %%#rutadarch#  %%F%%m%%r%%h%%w%%=%s %%#fleb#%%#buf#B%%n %%#fleln#%%#ln#%%l-%%L %%#fleco#%%#co# :%%c ",
    mode_info.hl, mode_info.name, mode_info.arrow, filetype_section
  )
end

vim.opt.statusline = "%!v:lua.get_statusline()"
