-- Visibilidad De La Barra De Estado valores posibles 0,1,2
vim.opt.laststatus = 2

-- Funcion Hi Para Acortar El Mapeo
local hi = function(group , properties)
     vim.api.nvim_set_hl(0,group , properties)
 end

-- Definir Colores y Estilos Para La Barra De Estado Izquierdo
hi("NormalColor", { bg = "#000000", fg = "#00af00", bold = true })
hi("InsertColor", { bg = "#000000", fg = "#ffff00", bold = true })
hi("VisualColor", { bg = "#000000", fg = "#ff8700", bold = true })
hi("VlColor", { bg = "#ff5f00", fg = "#000000", bold = true })
hi("VbColor", { bg = "#ff005f", fg = "#000000", bold = true })
hi("ReplaceColor", { bg = "#000000", fg = "#ff00ff", bold = true })
hi("TerminalColor", { bg = "#000000", fg = "#ff005f", bold = true })
hi("CommandColor", { bg = "#000000", fg = "#5faf00", bold = true })
-- Colores Para La Barra De Estado Derecho
hi("rutadarch", { bg = "#626262", fg = "#00d75f" })
hi("ln", { bg = "#626262", fg = "#00af00" })
hi("co", { bg = "#626262", fg = "#ffffff" })
hi("buf", { bg = "#626262", fg = "#ffaf00" })

-- Definir Modo Actual De La Barra
local current_mode = {
  n  = 'n',
  v  = 'v',
  V  = 'vl',
  ["\22"] = 'vb', -- <C-v> se representa como \22 en Lua
  i  = 'i',
  R  = 'r',
  c  = 'c',
  t  = 'T'
}

-- get_statusline Para capturar Estado De La Barra
_G.get_statusline = function()
  local mode = vim.fn.mode()
  local statusline = ""

  if mode == 'n' then
    statusline = statusline .. "%#NormalColor#  NORMAL "
  elseif mode == 'i' then
    statusline = statusline .. "%#InsertColor#  INSERT "
  elseif mode == 'R' then
    statusline = statusline .. "%#ReplaceColor#  REPLACE "
  elseif mode == 'v' then
    statusline = statusline .. "%#VisualColor#  VISUAL "
  elseif mode == 'V' then
    statusline = statusline .. "%#VlColor#  V-LINE "
  elseif mode == "\22" then
    statusline = statusline .. "%#VbColor#  V-BLOCK "
  elseif mode == 'c' then
    statusline = statusline .. "%#CommandColor#  COMANDO "
  elseif mode == 't' then
    statusline = statusline .. "%#TerminalColor#  TERMINAL "
  end

  statusline = statusline .. "%#rutadarch# %F%m%r%h%w%=%Y %#buf#B%n %#ln#%l-%L %#co#:%c"
  return statusline
end

-- Vista de la Barra de estado
vim.opt.statusline = '%!v:lua.get_statusline()'
