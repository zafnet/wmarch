-- Mapeos De Nvim
local map = vim.keymap.set

vim.g.mapleader = ' '

map('n', '<c-s>', ':w<CR>', { noremap = true })
map('n', '<c-x>', ':q!<CR>', { noremap = true })
map('n', '<A-q>', ':q<CR>', { noremap = true })

-- Crea Comentario Con Espacio Para Escribir Luego
map('n', '<leader>·', 'i#<space>', { noremap = true })
map('n', '<leader>"', 'i"<space>', { noremap = true })

-- Crea Comentario Con Espacio Atras De Algo Escrito
map('n', '<leader>y', 'i#<space><Esc>', { noremap = true })
map('n', '<leader>m', 'i"<space><Esc>', { noremap = true })

-- Usar FZF En NVIM Con La Tecla altgr + f
map('n', 'đ', ':FZF<CR>', { noremap = true })

-- Ver Los Buffers Abiertos
map('n', '<leader>bf', ':buffers<CR>', { noremap = true })

-- Agrega Un Espacio En Blanco y Pasas Al Modo Insertar
map('n', '<leader>o', 'o<Esc>', { noremap = true })
map('n', '<leader>p', 'O<Esc>', { noremap = true })
map('n', '<leader>k', 'i<space><Esc>', { noremap = true })

-- LLama Al Archivo De Configuracion De Nvim
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

-- Quita Resaltado De Busqueda
map('n', '<C-ñ>', ':nohl<CR>', { noremap = true })

-- Cambia ventana En Vertical y Horizontal Del Mismo Buffer Cuando Estan Creadas
map('n', '<leader>vv', '<C-w>t<C-w>H', { noremap = true })
map('n', '<leader>vh', '<C-w>t<C-w>K', { noremap = true })

-- Crear ventana Horizontal y Vertical Del Mismo Buffer
map('n', '<leader>h', '<C-w>s', { noremap = true })
map('n', '<leader>v', '<C-w>v', { noremap = true })

-- Abre Ventana Con Historial De Comandos Que Se Usaron
map('n', '<leader>q', 'q:', { noremap = true })

-- Mueve Las Ventanas C-l Derecha C-h Izquierda C-j Abajo C-k Arriba
map('n', '<C-l>', '<C-w>L', { noremap = true })
map('n', '<C-h>', '<C-w>H', { noremap = true })
map('n', '<C-j>', '<C-w>J', { noremap = true })
map('n', '<C-k>', '<C-w>K', { noremap = true })

-- Recargar Archivo Actual
map('n', '<leader>r', ':so %<CR>', { noremap = true, silent = true })

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
