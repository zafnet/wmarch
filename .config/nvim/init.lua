require('sets')
require('maps')
require('funcions')

vim.cmd.colorscheme('saxs')

-- Ver Paginas De Man En Nvim
--vim.cmd("runtime! ftplugin/man.vim")

-- Configuración De La Línea De Estado
vim.opt.laststatus = 2

local current_mode = {
  n  = 'n',
  v  = 'v',
  V  = 'vl',
  ["\22"] = 'vb', -- <C-v> se representa como \22 en Lua
  i  = 'i',
  r  = 'R',
  c  = 'c',
  t  = 'T'
}

-- Definir colores y estilos para la línea de estado
vim.api.nvim_set_hl(0, 'NormalColor', { bg = 0, fg ='#00af00', bold = true })
vim.api.nvim_set_hl(0, 'InsertColor', { bg = 0, fg ='#ffff00', bold = true })
vim.api.nvim_set_hl(0, 'VisualColor', { bg = 0, fg ='#ff8700', bold = true })
vim.api.nvim_set_hl(0, 'VlColor', { bg = '#ff5f00', fg =0, bold = true })
vim.api.nvim_set_hl(0, 'VbColor', { bg = '#ff005f', fg =0, bold = true })
vim.api.nvim_set_hl(0, 'ReplaceColor', { bg = '#000000', fg ='#52fcde', bold = true })
vim.api.nvim_set_hl(0, 'TerminalColor', { bg = 0, fg ='#ff005f', bold = true })
vim.api.nvim_set_hl(0, 'CommandColor', { bg = 0, fg ='#5faf00', bold = true })

-- Resaltado De Colores Para La Linea De Estado Derecha
vim.api.nvim_set_hl(0, 'rutadarch', { bg = '#626262', fg = '#00d75f' })
vim.api.nvim_set_hl(0, 'ln', { bg = '#626262', fg = '#00af00' })
vim.api.nvim_set_hl(0, 'co', { bg = '#626262', fg = '#ffffff' })
vim.api.nvim_set_hl(0, 'buf', { bg = '#626262', fg = '#ffaf00' })

-- Definir la función en el entorno global de Neovim
_G.get_statusline = function()
  local mode = vim.fn.mode()
  local statusline = ""

  if mode == 'n' then
    statusline = statusline .. "%#NormalColor#  NORMAL "
  elseif mode == 'i' then
    statusline = statusline .. "%#InsertColor#  INSERT "
  elseif mode == 'R' then
    statusline = statusline .. "%#ReplaceColor# REPLACE "
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
