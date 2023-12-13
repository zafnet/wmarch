" Mapeos De Nvim

let mapleader=' '
map <c-s> :w<Return>
map <c-x> :q!<Return>
map <A-q> :q<Return>

" Inserta Shebang En Modo Insertar
inoremap bib #!/usr/bin/env bash

" Crea Comentario Con Espacio Para Escribir Luego
nnoremap <leader>· i#<space>
nnoremap <leader>" i"<space>
" Crea Comentario Con Espacio Atras De Algo Escrito
nnoremap <leader>y i#<space><Esc>
nnoremap <leader>m i"<space><Esc>

" Usar FZF En NVIM Con La Tecla altgr + f
nnoremap đ :FZF!<CR>

" Agrega Un Espacio En Blanco y Pasas Al Modo Insertar
nnoremap <leader>o o<Esc>
nnoremap <leader>p O<Esc>
nnoremap <leader>k i<space><Esc>

" LLama El Archivo De Configuracion De Nvim
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

" Escribe El Simbolo De 2 Puntos Para Parle Un Comando
nnoremap º :

" Inserta Simbolos De  () {} [] "" '' En Modo Insertar
inoremap (( ()<left>
inoremap {{ {}<left>
inoremap [[ []<left>
inoremap '' ''<left>
inoremap "" ""<left>

" +Zoom y -Zoom a La Ventana Actual
nnoremap <leader>z <C-w>_ \|<C-w>\|
nnoremap <leader>x <C-w>=

" Tamaño De Ventana Vertical De +10 y -10
nnoremap <silent> <A-C-h> :vertical resize +10<CR>
nnoremap <silent> <A-C-l> :vertical resize -10<CR>

" Tamaño De Ventana Hacia Arriba Y Abajo De +10 y -10
nnoremap <silent> <A-C-k> :resize +10<CR>
nnoremap <silent> <A-C-j> :resize -10<CR>

" Mapeos De Netrw

"-- Mapeos y Color Para El Explorador NETRW

map <leader>ñ :Vexplore<Return>
map <leader>l <Return>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_winsize = 20
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_preview = 1
let g:netrw_special_syntax = 1
hi! link netrwMarkFile search

 hi netrwBak       ctermfg=78   ctermbg=NONE
 hi netrwCompress  ctermfg=135   ctermbg=NONE
 hi netrwCoreDump  ctermfg=21   ctermbg=NONE
 hi netrwData      ctermfg=41  ctermbg=NONE 
 hi netrwDoc	   ctermfg=15  ctermbg=NONE 
 hi netrwHdr	   ctermfg=208  ctermbg=NONE
 hi netrwLex	   ctermfg=204  ctermbg=NONE
 hi netrwYacc      ctermfg=44  ctermbg=NONE
 hi netrwLib	   ctermfg=124  ctermbg=NONE
 hi netrwMakefile  ctermfg=10  ctermbg=238
 hi netrwObj	   ctermfg=210  ctermbg=NONE
 hi netrwPix	   ctermfg=11  ctermbg=NONE
 hi netrwTags      ctermfg=82  ctermbg=NONE
 hi netrwTilde     ctermfg=196  ctermbg=NONE
 hi netrwTmp	   ctermfg=125  ctermbg=NONE
 hi netrwYacc      ctermfg=75  ctermbg=NONE
 hi netrwSymLink   ctermfg=219 ctermbg=NONE
