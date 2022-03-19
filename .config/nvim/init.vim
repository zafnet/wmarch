"   o8o               o8o      .                    o8o                    
"   `"'               `"'    .o8                    `"'                    
"  oooo  ooo. .oo.   oooo  .o888oo      oooo    ooo oooo  ooo. .oo.  .oo.   
"  `888  `888P"Y88b  `888    888         `88.  .8'  `888  `888P"Y88bP"Y88b  
"   888   888   888   888    888          `88..8'    888   888   888   888  
"   888   888   888   888    888 .   .o.   `888'     888   888   888   888  
"  o888o o888o o888o o888o   '888i'  Y8P    `8'     o888o o888o o888o o888o 
"
call plug#begin('~/.config/nvim/plugged')

 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'tomasr/molokai'
 Plug 'lilydjwg/colorizer'

call plug#end()

let g:plug_url_format = 'git@github.com:%s.git' "SUSTITUCION DE git@github.com POR .git CUANDO DESCARGA PLUGINS

syntax on                     
"colorscheme molokai           
set t_Co=256                  "CANTIDAD DE COLORES QUE ADMITE EL TERMINAL
"set guioptions=egmrti        
set gfn=Monospace\ 10         "TAMAÑO DE FUENTE PREDETERMINADO EN NVIM SI HAY ESPACIOS EN LA FUENTE,AGREGUE UN \ PARA ESCAPAR DEL ESPACIO
set autoread                "VERIFICA SI UN ARCHIVO ABIERTO SE MODIFICA EN CIERTOS EVENTOS Y LO RECARGAR AUTOMÁTICAMENTE                    
set noswapfile                "NO GUARDA UN ARCHIVO DE COPIA CUANDO LO QUEREMOS ABRIR DE NUEVO
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
"set laststatus=1             
"set ruler                    "MOSTRAR LA COLUMNA ACTUAL EN LA BARRA DE ESTADO
"set title                    "MUESTRA EL NOMBRE DEL ARCHIVO, LA RUTA DEL ARCHIVO QUE SE ESTÁ EDITANDO SI LA TERMINAL NO TIENE BORDES NO SE PUEDE VER
"set titleold="Terminal"      "ESTE DEJA EL TITULO DE LA VENTANA COMO ESTABA SUPUESTAMENTE
"set titlestring=%F           "MUESTRA LA RUTA DEL ARCHIVO SI LA TERMINAL NO TIENE BORDES NO LO MUESTRA
set number                    "MUESTRA NUMEROS DE LINEA EN EL EDITOR
set relativenumber            "MUESTRA NUMERO RELATIVO
set mouse=a                   "PERMITE LA INTEGRACIÓN DEL MOUSE (SELECCIONAR TEXTO, MOVER EL CURSOR)
set clipboard=unnamedplus     "DEJA COPIAR EL CLIPBOARD
set encoding=utf-8
set tabstop=4                 "PARA EL TAMAÑO DE TABULACIÓN 4 ESPACIOS DE ANCHO EN ESTE CASO
"set noshowmode               "CÓMO DESHACERSE DE LA BARRA DE LÍNEA DE COMANDO DE ABAJO INSERT 
set spelllang=en,es           "CORREGIR PALABRAS USANDO DICCIONARIOS EN INGLÉS Y ESPAÑOL
set splitbelow                "DIVIDIR LA PANTALLA ABAJO
set buftype=                  "PODER MODIFICAR EL BUFFER
set backspace=indent,eol,start 
set gcr=a:blinkon0            
"set scrolloff=12             
set nomodeline                
"set modelines=10             
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set softtabstop=0              
set shiftwidth=4              
set expandtab                  
set showmatch                 "PARA QUE BUSQUE LA PAREJA DE [] () {} 
set hidden                    "PARA QUE CUANDO QUIERA ABRIR OTRO ARCHIVO NO ME OBLIGUE A GUARDAR EL ANTERIOR
set hlsearch                  "PARA RESALTAR LA PALABRA CLAVE DE BÚSQUEDA
set incsearch                 "PARA RESALTAR BÚSQUEDA INCREMENTAL
set ignorecase                "IGNORAR MAYUSCULA Y MINISCULA
"set smartcase                "NO IGNORAR MAYÚSCULAS SI LA PALABRA A BUSCAR CONTIENE MAYÚSCULAS
set fileformats=unix,dos,mac
"set colorcolumn=120          "MUESTRA LA COLUMNA LÍMITE A 120 CARACTERES SE PUEDE MODIFICAR
"set nowrap                   "NO DIVIDIR LA LÍNEA SI ES MUY LARGA
"set termguicolors            "ACTIVA TRUE COLORS EN LA TERMINAL
"set background=dark          "FONDO DEL TEMA: LIGHT O DARK
"set cursorcolumn             "MUESTRA UNA COLUMNA EN DONDE ESTA EL CURSOR
set cursorline                "RESALTA LA LINEA EN LA POSICION ACTUAL 
set completeopt=menuone,longest "CON ESTA OPCION MUESTRA UN MENÚ PARA AUTOCOMPLETAR LAS PALABRAS
set complete+=kspell          "LO QUE ES KSPELL ES UN DICCIONARIO PARECE
set shortmess+=c              "NO MUESTRA UN CARTEL MOLESTO EN LA PARTE INFERIOR DERECHA

"hi CursorLine ctermfg=NONE ctermbg=red 

hi CursorLineNr ctermbg=blue ctermfg=11

hi LineNr ctermbg=NONE ctermfg=red

let mapleader=' '             
let g:airline_powerline_fonts = 1

"VIM-AIRLINE"

let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let no_buffers_menu=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

"EXPLORADOR DE ARCHIVOS"
map ñ :Vexplore<Return>
let g:netrw_banner = 0         
let g:netrw_liststyle = 3      
let g:netrw_browse_split = 0   
let g:netrw_winsize = 20       

"MAPEOS"
map QQ :wq<Return>
map LL :w<Return>
map XX :q!<Return>
map TT :q<Return>
inoremap <leader>w <Esc>
vnoremap <c-t> :split<CR>:term<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:term<CR>:resize 15<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :tabclose<CR>
nnoremap <Leader>bn :bn<Cr>    "BUFFER PROXIMO
nnoremap <Leader>bp :bp<Cr>    "BUFFER ANTERIOR
nnoremap <Leader>h <C-w>s      "LA MISMA VENTANA DIVIDIDA HORIZONTAL
nnoremap <Leader>v <C-w>v      "LA MISMA VENTANA DIVIDIDA VERTICAL
nnoremap <Leader>w <C-w>       "CAMBIA A LA VENTANA DIVIDIDA PRESIONANDO LIDER W Y LA LETRA DE LA DIRECCION HJKL
nnoremap <Leader>d :bd<CR>     ;BORRAR BUFFER ACTUAL
nnoremap <Leader>c :e $MYVIMRC<CR>
nnoremap <A-S-h> <C-w><        "VENTANAS EN VERTICAL U HORIZONTAL <A-S-l> ESTO EQUIVALE A <ALT-SHIFT-l> 
nnoremap <A-S-l> <C-w>>
nnoremap <A-S-j> <C-w>-
nnoremap <A-S-k> <C-w>+
