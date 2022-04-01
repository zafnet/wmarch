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

let mapleader=' '             
let g:airline_powerline_fonts = 1

syntax on                     
colorscheme molokai           
set t_Co=256                  
"set guioptions=egmrti        
set gfn=Monospace\ 10         
set autoread                                       
set noswapfile                
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
"set laststatus=1             
"set ruler                    
"set title                    
"set titleold="Terminal"      
"set titlestring=%F           
set number                    
set relativenumber            
set mouse=a                   
set clipboard=unnamedplus     
set encoding=utf-8
set tabstop=4                 
"set noshowmode               
set spelllang=en,es           
set splitbelow                
set buftype=                  
set backspace=indent,eol,start 
set gcr=a:blinkon0            
"set scrolloff=12             
set nomodeline                
"set modelines=10             
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set softtabstop=0              
set shiftwidth=4              
set expandtab                  
set showmatch                 
set hidden                    
set hlsearch                  
set incsearch                 
set ignorecase                
"set smartcase                
set fileformats=unix,dos,mac
"set colorcolumn=120          
"set nowrap                   
"set termguicolors            
set background=dark          
"set cursorcolumn             
set cursorline                
set completeopt=menuone,longest 
set complete+=kspell          
set shortmess+=c              

"PARA QUE EL CURSOR ESTE EN BARRA EN MODO INSERT Y NORMAL

set guicursor=n-i:ver100n-iCursor

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
nnoremap <Leader>bn :bn<Cr>    
nnoremap <Leader>bp :bp<Cr>    
nnoremap <Leader>h <C-w>s      
nnoremap <Leader>v <C-w>v      
nnoremap <Leader>w <C-w>       
nnoremap <Leader>d :bd<CR>     
nnoremap <Leader>c :e $MYVIMRC<CR>
nnoremap <A-S-h> <C-w><         
nnoremap <A-S-l> <C-w>>
nnoremap <A-S-j> <C-w>-
nnoremap <A-S-k> <C-w>+
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
"inoremap bibas #!/bin/bash<CR>

"hi CursorLine ctermfg=NONE ctermbg=red 

hi CursorLineNr ctermbg=blue ctermfg=11

hi LineNr ctermbg=NONE ctermfg=red

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
