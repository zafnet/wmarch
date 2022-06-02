"   o8o               o8o      .                    o8o
"   `"'               `"'    .o8                    `"'
"  oooo  ooo. .oo.   oooo  .o888oo      oooo    ooo oooo  ooo. .oo.  .oo.
"  `888  `888P"Y88b  `888    888         `88.  .8'  `888  `888P"Y88bP"Y88b
"   888   888   888   888    888          `88..8'    888   888   888   888
"   888   888   888   888    888 .   .o.   `888'     888   888   888   888
"  o888o o888o o888o o888o   '888i'  Y8P    `8'     o888o o888o o888o o888o
"

" Instala Vim-Plug Si No Esta Instalado

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    echo "Descargando Vim-Plug..."
    silent !mkdir -p ~/.config/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif


" Plugins

call plug#begin('~/.config/nvim/plugged')

 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'morhetz/gruvbox'
 Plug 'lilydjwg/colorizer'

call plug#end()

let g:plug_url_format = 'git@github.com:%s.git'

let mapleader=' '


" Configuraciones Base

syntax on
colorscheme gruvbox
set t_Co=256
set gfn=Monospace\ 10
set autoread
set noswapfile
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set encoding=utf-8
set tabstop=4
set spelllang=en,es
set splitbelow
set buftype=
set backspace=indent,eol,start
set gcr=a:blinkon0
set softtabstop=0
set shiftwidth=4
set expandtab
set showmatch
set hidden
set hlsearch
set incsearch
set ignorecase
set fileformats=unix,dos,mac
set background=dark
set cursorline
set completeopt=menuone,longest
set complete+=kspell
set shortmess+=c
set wildignorecase
set guicursor=n-i:ver100n-iCursor
set undofile
set undodir=~/.config/nvim/undodir
"set ruler
"set title
"set titleold="Terminal"
"set titlestring=%F
"set noshowmode
"set scrolloff=12
"set nomodeline
"set modelines=10
"set smartcase
"set cursorcolumn
"set colorcolumn=120
"set nowrap
"set termguicolors
"set guioptions=egmrti

" Explorador De Archivos NETRW

map <leader>ñ :Vexplore<Return>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_winsize = 20
let g:netrw_keepdir = 0
let g:netrw_localcopydircmd = 'cp -r'
hi! link netrwMarkFile search

" Mapeos

map ÑÑ :w<Return>
map XX :q!<Return>
map TT :q<Return>
inoremap <leader>p <C-p>
nnoremap <leader>o o<Esc>
nnoremap <leader>p O<Esc>
vnoremap <c-t> :split<CR>:term<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:term<CR>:resize 15<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :tabclose<CR>
nnoremap <Leader>bn :bn<Cr>
nnoremap <Leader>bp :bp<Cr>
nnoremap <Leader>h <C-w>s
nnoremap <Leader>v <C-w>v
nnoremap <Leader>w <C-w>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>c :e $MYVIMRC<CR>
nnoremap <A-S-h> <C-w><
nnoremap <A-S-l> <C-w>>
nnoremap <C-h>   <C-w>h
nnoremap <C-l>   <C-w>l
nnoremap <C-j>   <C-w>j
nnoremap <C-k>   <C-w>k
map <Leader>vv <C-w>t<C-w>H
map <Leader>vh <C-w>t<C-w>K
nnoremap <silent> <Leader>s :so %<CR>
nnoremap º :
nnoremap <leader>e :e
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
"inoremap bibas #!/bin/bash<CR>
tnoremap <Esc><Esc> <C-\><C-n>

" +Zoom y -Zoom a La Ventana Actual
nnoremap <leader>z <C-w>_ \|<C-w>\|
nnoremap <leader>x <C-w>=

" Tamaño De Ventana Vertical
nnoremap <silent> <A-S-j> :vertical resize +10<CR>
nnoremap <silent> <A-S-k> :vertical resize -10<CR>

" Tamaño De Ventana Hacia Arriba Y Abajo
nnoremap <silent> <A-S-d> :resize +10<CR>
nnoremap <silent> <A-S-u> :resize -10<CR>

" Cursor

"hi CursorLine ctermfg=NONE ctermbg=red

"hi CursorLineNr ctermbg=blue ctermfg=11

"hi LineNr ctermbg=NONE ctermfg=red

" Barra De Estado Personalizada De Nvim

" Barra 1
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set laststatus=2

" Barra 2
"set statusline+=\ %{mode()}
"set statusline+=\ %l
"set statusline+=\
"set statusline+=\ %F\ %*
"set statusline+=\
"set statusline+=\ %2*\ %F
"set statusline+=\ %1*\ %{getbufvar(bufnr('%'),'&mod')?'Modified':'Saved'}
"set statusline+=\ %m
"set statusline+=%=
"set statusline+=\ %1*\
"set statusline+=\ Line:\ %l
"set statusline+=\ Col:\ %c
"set statusline+=\ ::
"set statusline+=\ %n
"set statusline+=\

" Vim-Airline

let g:airline_powerline_fonts = 1

let g:airline_theme = 'gruvbox'
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

" Powerline Symbols

  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
