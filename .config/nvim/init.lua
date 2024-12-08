require('sets')
require('maps')
require('funcions')
require('netrw')
require('abrevs')

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
vim.api.nvim_set_hl(0, 'NormalColor', { bg = '#000000', fg = '#00af00', bold = true })     -- '#000000' -> 0, '#00af00' -> 34
vim.api.nvim_set_hl(0, 'InsertColor', { bg = '#000000', fg = '#ffff00', bold = true })     -- '#ffff00' -> 226
vim.api.nvim_set_hl(0, 'VisualColor', { bg = '#000000', fg = '#ff8700', bold = true })     -- '#ff8700' -> 214
vim.api.nvim_set_hl(0, 'VlColor', { bg = '#ff5f00', fg = '#000000', bold = true })         -- '#ff5f00' -> 202, '#000000' -> 0
vim.api.nvim_set_hl(0, 'VbColor', { bg = '#ff005f', fg = '#000000', bold = true })         -- '#ff005f' -> 197
vim.api.nvim_set_hl(0, 'ReplaceColor', { bg = '#000000', fg = '#ff00ff', bold = true })    -- '#ff00ff' -> 201
vim.api.nvim_set_hl(0, 'TerminalColor', { bg = '#000000', fg = '#ff005f', bold = true })   -- '#ff005f' -> 197
vim.api.nvim_set_hl(0, 'CommandColor', { bg = '#000000', fg = '#5faf00', bold = true })    -- '#5faf00' -> 70

-- Resaltado De Colores Para La Linea De Estado Derecha
vim.api.nvim_set_hl(0, 'rutadarch', { bg = '#626262', fg = '#00d75f' })                    -- '#626262' -> 240, '#00d75f' -> 42
vim.api.nvim_set_hl(0, 'ln', { bg = '#626262', fg = '#00af00' })                           -- '#00af00' -> 34
vim.api.nvim_set_hl(0, 'co', { bg = '#626262', fg = '#ffffff' })                           -- '#ffffff' -> 15
vim.api.nvim_set_hl(0, 'buf', { bg = '#626262', fg = '#ffaf00' })                          -- '#ffaf00' -> 214

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
