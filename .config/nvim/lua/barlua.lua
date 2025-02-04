-- Visibilidad De La Barra De Estado valores posibles 0,1,2
vim.opt.laststatus = 2

-- Funcion Hi Para Acortar El Mapeo
local hi = function(group , properties)
     vim.api.nvim_set_hl(0,group , properties)
 end

-- Definir Colores y Estilos Para Modos
hi("NormalColor",   { bg = "#8bd88b", fg = "#000000", italic = true })
hi("InsertColor",   { bg = "#3498db", fg = "#000000", italic = true })
hi("VisualColor",   { bg = "#9d65f8", fg = "#000000", italic = true })
hi("VlColor",       { bg = "#ff5f00", fg = "#000000", italic = true })
hi("VbColor",       { bg = "#ff005f", fg = "#000000", italic = true })
hi("ReplaceColor",  { bg = "#d3538f", fg = "#000000", italic = true })
hi("TerminalColor", { bg = "#e74c3c", fg = "#000000", italic = true })
hi("CommandColor",  { bg = "#229954", fg = "#000000", italic = true })

-- Colores Flechas Para Modos
hi("flen",  { bg = "NONE",    fg = "#8bd88b" })
hi("flei",  { bg = "NONE",    fg = "#3498db" })
hi("flev",  { bg = "NONE",    fg = "#9d65f8" })
hi("flevl", { bg = "NONE",    fg = "#ff5f00" })
hi("flevb", { bg = "NONE",    fg = "#ff005f" })
hi("fler",  { bg = "NONE",    fg = "#d3538f" })
hi("flec",  { bg = "NONE",    fg = "#229954" })
hi("flet",  { bg = "NONE",    fg = "#e74c3c" })

-- Colores Barra Lado Derecho
hi("rutadarch", { bg = "NONE",    fg = "#00d75f" , italic = true })
hi("ln",        { bg = "#d3538f", fg = "#000000" , italic = true })
hi("co",        { bg = "#e74c3c", fg = "#000000" , italic = true })
hi("buf",       { bg = "#ff5f00", fg = "NONE"    , italic = true })
hi("ft",        { bg = "#e74c3c", fg = "#2c2c2c" , italic = true })

-- Colores Flechas Barra Lado Derecho
hi("fleb",   { bg = "NONE",  fg = "#ff5f00" })
hi("flebi",  { bg = "NONE",  fg = "#d3538f" })
hi("flenl",  { bg = "NONE",  fg = "#d3538f" })
hi("fleco",  { bg = "NONE",  fg = "#e74c3c" })
hi("fleft",  { bg = "NONE",  fg = "#e74c3c" })

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
    statusline = statusline .. "%#NormalColor#  NORMAL %#flen#"
  elseif mode == 'i' then
    statusline = statusline .. "%#InsertColor#  INSERT %#flei#"
  elseif mode == 'R' then
    statusline = statusline .. "%#ReplaceColor#  REPLACE %#fler#"
  elseif mode == 'v' then
    statusline = statusline .. "%#VisualColor#  VISUAL %#flev#"
  elseif mode == 'V' then
    statusline = statusline .. "%#VlColor#  V-LINE %#flevl#"
  elseif mode == "\22" then
    statusline = statusline .. "%#VbColor#  V-BLOCK %#flevb#"
  elseif mode == 'c' then
    statusline = statusline .. "%#CommandColor#  COMANDO %#flec#"
  elseif mode == 't' then
    statusline = statusline .. "%#TerminalColor#  TERMINAL %#flet#"
  end
  statusline = statusline .. "%#rutadarch#  %F%m%r%h%w%=%#fleft#%#ft#%Y %#fleb#%#buf#B%n  %#flebi#%#ln#%l-%L  %#fleco#%#co#:%c "
  return statusline
end

-- Vista de la Barra de estado
vim.opt.statusline = '%!v:lua.get_statusline()'
