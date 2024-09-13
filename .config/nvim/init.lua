require('sets')
require('maps')
require('funcions')

vim.cmd.colorscheme('saxs')

-- Configuración De La Línea De Estado
vim.opt.laststatus = 2

local current_mode = {
  n  = 'n',
  v  = 'v',
  V  = 'vl',
  ["\22"] = 'vb', -- <C-v> se representa como \22 en Lua
  i  = 'i',
  R  = 'r',
  Rv = 'rv',
  c  = 'c',
  t  = 'T'
}

-- Definir colores y estilos para la línea de estado
vim.api.nvim_set_hl(0, 'NormalColor', { ctermbg = 0, ctermfg = 34, bold = true })     -- '#000000' -> 0, '#00af00' -> 34
vim.api.nvim_set_hl(0, 'InsertColor', { ctermbg = 0, ctermfg = 226, bold = true })    -- '#ffff00' -> 226
vim.api.nvim_set_hl(0, 'VisualColor', { ctermbg = 0, ctermfg = 214, bold = true })    -- '#ff8700' -> 214
vim.api.nvim_set_hl(0, 'VlColor', { ctermbg = 202, ctermfg = 0, bold = true })        -- '#ff5f00' -> 202, '#000000' -> 0
vim.api.nvim_set_hl(0, 'VbColor', { ctermbg = 197, ctermfg = 0, bold = true })        -- '#ff005f' -> 197
vim.api.nvim_set_hl(0, 'ReplaceColor', { ctermbg = 0, ctermfg = 201, bold = true })   -- '#ff00ff' -> 201
vim.api.nvim_set_hl(0, 'TerminalColor', { ctermbg = 0, ctermfg = 197, bold = true })  -- '#ff005f' -> 197
vim.api.nvim_set_hl(0, 'CommandColor', { ctermbg = 0, ctermfg = 70, bold = true })    -- '#5faf00' -> 70

-- Resaltado De Colores Para La Linea De Estado Derecha
vim.api.nvim_set_hl(0, 'rutadarch', { ctermbg = 240, ctermfg = 42 })    -- '#626262' -> 240, '#00d75f' -> 42
vim.api.nvim_set_hl(0, 'ln', { ctermbg = 240, ctermfg = 34 })           -- '#00af00' -> 34
vim.api.nvim_set_hl(0, 'co', { ctermbg = 240, ctermfg = 15 })           -- '#ffffff' -> 15
vim.api.nvim_set_hl(0, 'buf', { ctermbg = 240, ctermfg = 214 })         -- '#ffaf00' -> 214

-- Definir la función en el entorno global de Neovim
_G.get_statusline = function()
  local mode = vim.fn.mode()
  local statusline = ""

  if mode == 'n' then
    statusline = statusline .. "%#NormalColor#  NORMAL "
  elseif mode == 'i' then
    statusline = statusline .. "%#InsertColor#  INSERT "
  elseif mode == 'r' then
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

-- Configuración de la línea de estado
vim.opt.statusline = '%!v:lua.get_statusline()'
