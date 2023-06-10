" Mapeos

let mapleader=' '
map <c-s> :w<Return>
map <c-x> :q!<Return>
map <A-q> :q<Return>

" Crea Comentario Con Espacio Para Escribir Luego
nnoremap <leader>· i#<space>
nnoremap <leader>" i"<space>
" Crea Comentario Con Espacio Atras De Algo Escrito
nnoremap <leader>y i#<space><Esc>
nnoremap <leader>m i"<space><Esc>

nnoremap <leader>o o<Esc>
nnoremap <leader>p O<Esc>
nnoremap <leader>k i<space><Esc>
nnoremap <Leader>c :e $MYVIMRC<CR>

" Crea Terminal En Horizontal En Modo Normal
nnoremap <c-t> :split<CR>:term<CR>:resize 15<CR>

" Sale De La Terminal Para Poder Ir A La Ventana De Nvim Con A-{h,l,k,j} C-x Elimina La Terminal
tnoremap <Esc><Esc> <C-\><C-n>

" Se Mueve Al Buffer Anterior O Posterior
nnoremap <Leader>bn :bn<Cr>
nnoremap <Leader>bp :bp<Cr>

" Elimina El Buffer Actual
nnoremap <Leader>d :bd<CR>

" Sustituye Palabra En Todo El Buffer
map <leader>s :%s///g<left><left><left>

" Mueve El Cursor a La ventana Arriba Abajo Izquierda o Derecha
nnoremap <A-h>   <C-w>h
nnoremap <A-l>   <C-w>l
nnoremap <A-j>   <C-w>j
nnoremap <A-k>   <C-w>k

" Copia Una Linea Mostrando un Resaltado
nnoremap Y yg$

" Inserta Modo De Busqueda
nnoremap <leader>0 /

" Quita Resaltado De Busqueda
map <C-ñ>  :nohl<CR>

" Cambia ventana En Vertical y Horizontal Del Mismo Buffer
map <Leader>vv <C-w>t<C-w>H
map <Leader>vh <C-w>t<C-w>K

" Crear ventana Horizontal y Vertical Del Mismo Buffer
nnoremap <Leader>h <C-w>s
nnoremap <Leader>v <C-w>v

" Abrir Ventana Lado Izquierdo En Vertical Con Nuevo Archivo
nnoremap  <Leader>q :vs 

" Abre Ventana Con Historial De Comandos Que Se Usaron
nnoremap <Leader>º q:

" Mueve Las Ventanas C-l Derecha C-h Izquierda C-j Abajo C-k Arriba
nnoremap <C-l> <C-w>L
nnoremap <C-h> <C-w>H
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K

" Recargar Archivo Actual
nnoremap <silent> <Leader>r :so %<CR>

" Abre Archivo Con EL Nombre Que Le Pasemos En Buffer Oculto 
nnoremap <leader>e :e 

nnoremap º :

" Inserta Simbolos De  () {} [] "" '' En Modo Insertar
inoremap (( ()<left>
inoremap {{ {}<left>
inoremap [[ []<left>
inoremap '' ''<left>
inoremap "" ""<left>


" Inserta Shebang En Modo Insertar
inoremap bib #!/usr/bin/env bash

" +Zoom y -Zoom a La Ventana Actual
nnoremap <leader>z <C-w>_ \|<C-w>\|
nnoremap <leader>x <C-w>=

" Tamaño De Ventana Vertical De +10 y -10
nnoremap <silent> <A-C-h> :vertical resize +10<CR>
nnoremap <silent> <A-C-l> :vertical resize -10<CR>

" Tamaño De Ventana Hacia Arriba Y Abajo De +10 y -10
nnoremap <silent> <A-C-k> :resize +10<CR>
nnoremap <silent> <A-C-j> :resize -10<CR>
