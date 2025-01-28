local map = vim.keymap.set -- Variable Local Para Mapeos

vim.g.mapleader = ' '      -- Seteando Tecla Lider

map('n', '<c-s>', ':w<CR>', { noremap = true }) -- Guarda El archivo actual
map('n', '<c-x>', ':q!<CR>', { noremap = true })-- Sale sin Guarda Forzado El archivo actual
map('n', '<A-q>', ':q<CR>', { noremap = true }) -- Sale sin Guarda El archivo actual

map('n', '<leader>y', 'i#<space><Esc>', { noremap = true }) -- comentario # Con Espacio Atras
map('n', '<leader>m', 'i"<space><Esc>', { noremap = true }) -- comentario " Con Espacio Atras

map('n', 'đ', ':FZF<CR>', { noremap = true })  -- Usar FZF En NVIM Con La Tecla altgr + f
map('n', '<leader>f', '/', { noremap = true }) -- Colocar La Barra Para Buscar
map('n', '<leader>bf', ':buffers<CR>', { noremap = true }) -- Ver Los Buffers Abiertos

map('n', '<leader>o', 'o<Esc>', { noremap = true })        -- Agrega Un Espacio En Blanco hacia abajo y Pasas Al Modo Insertar
map('n', '<leader>p', 'O<Esc>', { noremap = true })        -- Agrega Un Espacio En Blanco hacia arriba y Pasas Al Modo Insertar
map('n', '<leader>k', 'i<space><Esc>', { noremap = true }) -- Agrega Un Espacio En Blanco hacia la derecha

map('n', '<leader>c', ':e $MYVIMRC<CR>', { noremap = true }) -- LLama Al Archivo De Configuracion De Nvim

map('n', '<c-t>', ':split<CR>:term<CR>:resize 15<CR>:startinsert<CR>', { noremap = true }) -- Crea Terminal En Horizontal En Modo Normal
map('t', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true })  -- Sale De Terminal va a Nvim cambia de ventana Con A+h,l,k,j C-x quita ventana de Terminal

map('n', '<leader>h', '<C-w>s', { noremap = true }) -- Crear ventana Horizontal Del Mismo Buffer
map('n', '<leader>v', '<C-w>v', { noremap = true }) -- Crear ventana Vertical Del Mismo Buffer

map('n', '<leader>vv', '<C-w>t<C-w>H', { noremap = true }) -- Cambia ventana En Vertical Del Mismo Buffer Cuando Estan Creadas
map('n', '<leader>vh', '<C-w>t<C-w>K', { noremap = true }) -- Cambia ventana En Horizontal Del Mismo Buffer Cuando Estan Creadas

map('n', '<leader>bn', ':bn<CR>', { noremap = true })                  -- Se Mueve Al Buffer Siguiente
map('n', '<leader>bp', ':bp<CR>', { noremap = true })                  -- Se Mueve Al Buffer Anterior
map('n', '<leader>d', ':bd<CR>', { noremap = true })                   -- Elimina El Buffer Actual
map('n', '<leader>s', ':%s/', { noremap = true }) -- Sustituye Palabra En Todo El Buffer

map('n', '<A-h>', '<C-w>h', { noremap = true }) -- Mueve El Cursor a La ventana  Derecha
map('n', '<A-l>', '<C-w>l', { noremap = true }) -- Mueve El Cursor a La ventana Izquierda
map('n', '<A-j>', '<C-w>j', { noremap = true }) -- Mueve El Cursor a La ventana Abajo
map('n', '<A-k>', '<C-w>k', { noremap = true }) -- Mueve El Cursor a La ventana Arriba

map('n', 'Y', 'yg$', { noremap = true })           -- Copia Una Linea Mostrando un Resaltado
map('n', '<C-ñ>', ':nohl<CR>', { noremap = true }) -- Quita Resaltado De Busqueda

map('n', '<leader>q', 'q:', { noremap = true }) -- Abre Ventana Con Historial De Comandos Que Se Usaron

map('n', '<C-l>', '<C-w>L', { noremap = true }) -- Mueve Las Ventanas C-l Derecha
map('n', '<C-h>', '<C-w>H', { noremap = true }) -- Mueve Las Ventanas C-h Izquierda
map('n', '<C-j>', '<C-w>J', { noremap = true }) -- Mueve Las Ventanas C-j Abajo
map('n', '<C-k>', '<C-w>K', { noremap = true }) -- Mueve Las Ventanas C-k Arriba

map('n', '<leader>r', ':so %<CR>', { noremap = true, silent = true }) -- Recargar Archivo Actual

map('i', '((', '()<left>', { noremap = true })     -- Inserta Simbolos De  () En Modo Insertar
map('i', '{{', '{}<left>', { noremap = true })     -- Inserta Simbolos De  {} En Modo Insertar
map('i', '[[', '[]<left>', { noremap = true })     -- Inserta Simbolos De  [] En Modo Insertar
map('i', '\'\'', '\'\'<left>', { noremap = true }) -- Inserta Simbolos De  '' En Modo Insertar
map('i', '""', '""<left>', { noremap = true })     -- Inserta Simbolos De  "" En Modo Insertar

map('n', '<leader>z', '<C-w>_ |<C-w>|', { noremap = true }) -- +Zoom a La Ventana Actual
map('n', '<leader>x', '<C-w>=', { noremap = true })         -- -Zoom a La Ventana Actual

map('n', '<A-C-h>', ':vertical resize +10<CR>', { noremap = true, silent = true }) -- Tamaño De Ventana Vertical De +10
map('n', '<A-C-l>', ':vertical resize -10<CR>', { noremap = true, silent = true }) -- Tamaño De Ventana Vertical De -10

map('n', '<A-C-k>', ':resize +10<CR>', { noremap = true, silent = true }) -- Tamaño De Ventana Hacia Arriba Y Abajo De +10
map('n', '<A-C-j>', ':resize -10<CR>', { noremap = true, silent = true }) -- Tamaño De Ventana Hacia Arriba Y Abajo De -10
