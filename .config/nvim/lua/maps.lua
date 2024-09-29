-- Mapeos De Nvim
local map = vim.keymap.set

vim.g.mapleader = ' '

map('n', '<c-s>', ':w<CR>', { noremap = true })
map('n', '<c-x>', ':q!<CR>', { noremap = true })
map('n', '<A-q>', ':q<CR>', { noremap = true })

-- Inserta Shebang En Modo Insertar
map('i', 'bib', '#!/usr/bin/env bash', { noremap = true })

-- Crea Comentario Con Espacio Para Escribir Luego
map('n', '<leader>·', 'i#<space>', { noremap = true })
map('n', '<leader>"', 'i"<space>', { noremap = true })

-- Crea Comentario Con Espacio Atras De Algo Escrito
map('n', '<leader>y', 'i#<space><Esc>', { noremap = true })
map('n', '<leader>m', 'i"<space><Esc>', { noremap = true })

-- Usar FZF En NVIM Con La Tecla altgr + f
map('n', 'đ', ':FZF!<CR>', { noremap = true })

-- Agrega Un Espacio En Blanco y Pasas Al Modo Insertar
map('n', '<leader>o', 'o<Esc>', { noremap = true })
map('n', '<leader>p', 'O<Esc>', { noremap = true })
map('n', '<leader>k', 'i<space><Esc>', { noremap = true })

-- LLama El Archivo De Configuracion De Nvim
map('n', '<leader>c', ':e $MYVIMRC<CR>', { noremap = true })

-- Crea Terminal En Horizontal En Modo Normal
map('n', '<c-t>', ':split<CR>:term<CR>:resize 15<CR>:startinsert<CR>', { noremap = true })

-- Sale De La Terminal Para Poder Ir A La Ventana De Nvim Con A-{h,l,k,j} C-x Elimina La Terminal
map('t', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true })

-- Se Mueve Al Buffer Anterior O Posterior
map('n', '<leader>bn', ':bn<CR>', { noremap = true })
map('n', '<leader>bp', ':bp<CR>', { noremap = true })

-- Elimina El Buffer Actual
map('n', '<leader>d', ':bd<CR>', { noremap = true })

-- Sustituye Palabra En Todo El Buffer
map('n', '<leader>s', ':%s///g<left><left><left>', { noremap = true })

-- Mueve El Cursor a La ventana Arriba Abajo Izquierda o Derecha
map('n', '<A-h>', '<C-w>h', { noremap = true })
map('n', '<A-l>', '<C-w>l', { noremap = true })
map('n', '<A-j>', '<C-w>j', { noremap = true })
map('n', '<A-k>', '<C-w>k', { noremap = true })

-- Copia Una Linea Mostrando un Resaltado
map('n', 'Y', 'yg$', { noremap = true })

-- Inserta Modo De Busqueda
map('n', '<leader>0', '/', { noremap = true })

-- Quita Resaltado De Busqueda
map('n', '<C-ñ>', ':nohl<CR>', { noremap = true })

-- Cambia ventana En Vertical y Horizontal Del Mismo Buffer
map('n', '<leader>vv', '<C-w>t<C-w>H', { noremap = true })
map('n', '<leader>vh', '<C-w>t<C-w>K', { noremap = true })

-- Crear ventana Horizontal y Vertical Del Mismo Buffer
map('n', '<leader>h', '<C-w>s', { noremap = true })
map('n', '<leader>v', '<C-w>v', { noremap = true })

-- Abrir Ventana Lado Izquierdo En Vertical Con Nuevo Archivo
map('n', '<leader>q', ':vs ', { noremap = true })

-- Abre Ventana Con Historial De Comandos Que Se Usaron
map('n', '<leader>º', 'q:', { noremap = true })

-- Mueve Las Ventanas C-l Derecha C-h Izquierda C-j Abajo C-k Arriba
map('n', '<C-l>', '<C-w>L', { noremap = true })
map('n', '<C-h>', '<C-w>H', { noremap = true })
map('n', '<C-j>', '<C-w>J', { noremap = true })
map('n', '<C-k>', '<C-w>K', { noremap = true })

-- Recargar Archivo Actual
map('n', '<leader>r', ':so %<CR>', { noremap = true, silent = true })

-- Abre Archivo Con EL Nombre Que Le Pasemos En Buffer Oculto 
map('n', '<leader>e', ':e ', { noremap = true })

-- Escribe El Simbolo De 2 Puntos Para Parle Un Comando
map('n', 'º', ':', { noremap = true })

-- Inserta Simbolos De  () {} [] "" '' En Modo Insertar
map('i', '((', '()<left>', { noremap = true })
map('i', '{{', '{}<left>', { noremap = true })
map('i', '[[', '[]<left>', { noremap = true })
map('i', '\'\'', '\'\'<left>', { noremap = true })
map('i', '""', '""<left>', { noremap = true })

-- +Zoom y -Zoom a La Ventana Actual
map('n', '<leader>z', '<C-w>_ |<C-w>|', { noremap = true })
map('n', '<leader>x', '<C-w>=', { noremap = true })

-- Tamaño De Ventana Vertical De +10 y -10
map('n', '<A-C-h>', ':vertical resize +10<CR>', { noremap = true, silent = true })
map('n', '<A-C-l>', ':vertical resize -10<CR>', { noremap = true, silent = true })

-- Tamaño De Ventana Hacia Arriba Y Abajo De +10 y -10
map('n', '<A-C-k>', ':resize +10<CR>', { noremap = true, silent = true })
map('n', '<A-C-j>', ':resize -10<CR>', { noremap = true, silent = true })

-- Mapeos De Netrw

-- Mapeos y Color Para El Explorador NETRW
map('n', '<leader>ñ', ':Vexplore<CR>', { noremap = true })
map('n', '<leader>l', '<CR>', { noremap = true })

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 20
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_preview = 1
vim.g.netrw_special_syntax = 1

vim.cmd [[
  hi! link netrwMarkFile search

  hi netrwBak       ctermfg=78   ctermbg=NONE
  hi netrwCompress  ctermfg=135   ctermbg=NONE
  hi netrwCoreDump  ctermfg=21   ctermbg=NONE
  hi netrwData      ctermfg=41  ctermbg=NONE 
  hi netrwDoc       ctermfg=15  ctermbg=NONE 
  hi netrwHdr       ctermfg=208  ctermbg=NONE
  hi netrwLex       ctermfg=204  ctermbg=NONE
  hi netrwYacc      ctermfg=44  ctermbg=NONE 
  hi netrwLib       ctermfg=124  ctermbg=NONE
  hi netrwMakefile  ctermfg=10  ctermbg=238
  hi netrwObj       ctermfg=210  ctermbg=NONE
  hi netrwPix       ctermfg=11  ctermbg=NONE
  hi netrwTags      ctermfg=82  ctermbg=NONE
  hi netrwTilde     ctermfg=196  ctermbg=NONE
  hi netrwTmp       ctermfg=125  ctermbg=NONE
  hi netrwYacc      ctermfg=75  ctermbg=NONE
  hi netrwSymLink   ctermfg=219 ctermbg=NONE
]]

