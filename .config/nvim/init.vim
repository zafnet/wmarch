"   o8o               o8o      .                    o8o
"   `"'               `"'    .o8                    `"'
"  oooo  ooo. .oo.   oooo  .o888oo      oooo    ooo oooo  ooo. .oo.  .oo.
"  `888  `888P"Y88b  `888    888         `88.  .8'  `888  `888P"Y88bP"Y88b
"   888   888   888   888    888          `88..8'    888   888   888   888
"   888   888   888   888    888 .   .o.   `888'     888   888   888   888
"  o888o o888o o888o o888o   '888i'  Y8P    `8'     o888o o888o o888o o888o
"

"-- Cargando Archivos Externos Para Nvim
source ~/.config/nvim/bases.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/funcions.vim
"source ~/.config/nvim/plugs.vim
"source ~/.config/nvim/fzf.vim

colorscheme saxs

"-- Ver Paginas De Man En Nvim
runtime! ftplugin/man.vim

"-- Configuración De La Línea De Estado
set laststatus=2
set statusline=

let g:currentmode={
       \ 'n'  : 'n',
       \ 'v'  : 'v',
       \ 'V'  : 'vl',
       \ "\<C-v>" : 'vb',
       \ 'i'  : 'i',
       \ 'R'  : 'r',
       \ 'Rv' : 'rv',
       \ 'c'  : 'c',
       \ 't'  : 'T',
       \}
 
" Resaltado De Colores Para Los Modos En La Linea De Estado 
hi NormalColor   ctermbg=16   ctermfg=34     cterm=bold
hi InsertColor   ctermbg=16   ctermfg=11     cterm=bold
hi VisualColor   ctermbg=16   ctermfg=208    cterm=bold
hi VlColor       ctermbg=202  ctermfg=16     cterm=bold
hi VbColor       ctermbg=197  ctermfg=16     cterm=bold
hi ReplaceColor  ctermbg=16   ctermfg=201    cterm=bold
hi TerminalColor ctermbg=16   ctermfg=197    cterm=bold
hi CommandColor  ctermbg=16   ctermfg=70     cterm=bold

" Resaltado De Colores Para La Linea De Estado Derecha
"highlight WinSeparator ctermbg=none ctermfg=240
hi rutadarch    ctermbg=8  ctermfg=41
hi ln           ctermbg=8  ctermfg=34
hi co           ctermbg=8  ctermfg=15
hi buf          ctermbg=8  ctermfg=214

set statusline=
set statusline+=%#NormalColor#%{(g:currentmode[mode()]=='N')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertColor#%{(g:currentmode[mode()]=='I')?'\ \ INSERT\ ':''}
set statusline+=%#ReplaceColor#%{(g:currentmode[mode()]=='r')?'\ \ REPLACE\ ':''}
set statusline+=%#ReplaceColor#%{(g:currentmode[mode()]=='V·Replace')?'\ \ v-replace\ ':''}
set statusline+=%#VisualColor#%{(g:currentmode[mode()]=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#VlColor#%{(g:currentmode[mode()]=='vl')?'\ \ V-LINE\ ':''}
set statusline+=%#VbColor#%{(g:currentmode[mode()]=='vb')?'\ \ V-BLOCK\ ':''}
set statusline+=%#CommandColor#%{(g:currentmode[mode()]=='C')?'\ \ COMANDO\ ':''}
set statusline+=%#TerminalColor#%{(g:currentmode[mode()]=='t')?'\ \ TERMINAL\ ':''}

set statusline+=%#rutadarch#\ %F%m%r%h%w%=%Y\ %#buf#B%n\ %#ln#\%l-%L\ %#co#\\:%c
