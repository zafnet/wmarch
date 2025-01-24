"███████╗ █████╗ ██╗  ██╗███████╗  ██╗   ██╗██╗███╗   ███╗    
"██╔════╝██╔══██╗╚██╗██╔╝██╔════╝  ██║   ██║██║████╗ ████║    
"███████╗███████║ ╚███╔╝ ███████╗  ██║   ██║██║██╔████╔██║    
"╚════██║██╔══██║ ██╔██╗ ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║    
"███████║██║  ██║██╔╝ ██╗███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║    
"╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" COLOR PARA GUI
hi clear

let g:colors_name = 'saxs'

let s:t_Co = &t_Co

if s:t_Co >= 256

highlight Normal guifg=NONE guibg=NONE gui=bold  " NONE en guibg ctermbg guifg o ctermfg coloca el fondo transparente para terminales
highlight Cursor guifg=#ff0000 guibg=NONE gui=bold
highlight CursorLine guifg=NONE guibg=NONE gui=NONE
highlight CurSearch guifg=#ffaf00 guibg=#3a3a3a gui=bold
highlight CursorLineFold guifg=#ff5f5f guibg=NONE gui=bold
highlight Folded guifg=#00af5f guibg=#3a3a3a gui=NONE
"highlight CursorLineSign guifg=#d70000 guibg=NONE gui=bold
"highlight CursorLineNr guifg=NONE guibg=NONE gui=NONE
"highlight LineNrAbove guifg=NONE guibg=NONE gui=NONE
"highlight LineNrBelow guifg=NONE guibg=NONE gui=NONE
"highlight Define guifg=#00afff guibg=#3a3a3a gui=bold
highlight IncSearch guifg=#ffaf00 guibg=#3a3a3a gui=bold
highlight Search guifg=#ff5faf guibg=#3a3a3a gui=bold
highlight LineNr guifg=#ff5f5f guibg=#444444 gui=bold
highlight Directory guifg=#005faf guibg=NONE gui=bold
highlight MatchParen guifg=#ff0000 guibg=NONE gui=bold
highlight ModeMsg guifg=#ff5f5f guibg=#000000 gui=bold
highlight MsgArea guifg=#ff5f5f guibg=#3a3a3a gui=bold
highlight Pmenu guifg=#ff5f5f guibg=#3a3a3a gui=bold
highlight PmenuSel guifg=#ff5f5f guibg=#262626 gui=bold
highlight PmenuSbar guifg=#ff5f5f guibg=#3a3a3a gui=bold
highlight Question guifg=#ff87af guibg=#3a3a3a gui=bold
highlight WarningMsg guifg=#ffd700 guibg=#2e2e2e gui=bold
highlight StatusLineTerm guifg=#005f87 guibg=NONE
highlight Title guifg=#5faf87 guibg=NONE gui=bold
highlight Visual guifg=NONE guibg=#3a3a3a gui=bold
highlight VisualNOS guifg=NONE guibg=#005f87 gui=NONE
highlight Comment guifg=#b2b2b2 guibg=NONE gui=bold
highlight String guifg=#ffd700 guibg=NONE gui=bold
highlight Character guifg=#d787af guibg=NONE gui=bold
highlight Number guifg=#ff8700 guibg=NONE gui=bold
highlight Boolean guifg=#800080 guibg=NONE gui=bold
highlight Float guifg=#800080 guibg=NONE gui=bold
highlight Identifier guifg=#00af5f guibg=NONE gui=bold
highlight Function guifg=#87ff87 guibg=NONE gui=bold
highlight Statement guifg=#d7005f guibg=NONE gui=bold
highlight Conditional guifg=#ff5f5f guibg=NONE gui=bold
highlight Repeat guifg=#d70000 guibg=NONE gui=bold
highlight Label guifg=NONE guibg=NONE gui=bold
highlight Operator guifg=#ffd7af guibg=NONE gui=bold
highlight Keyword guifg=#ff5f5f guibg=NONE gui=bold
highlight Exception guifg=#ff0000 guibg=NONE gui=bold
highlight Special guifg=#af87af guibg=NONE gui=bold
highlight SpecialComment guifg=#8700af guibg=NONE gui=bold
highlight SpecialKey guifg=#ff5f5f guibg=NONE gui=bold
highlight Underlined guifg=#00ff87 guibg=NONE gui=bold
highlight VertSplit guifg=#00af87 guibg=NONE gui=bold
highlight FoldColumn guifg=#00005f guibg=NONE gui=NONE
highlight ErrorMsg guifg=#ff0000 guibg=#ffd7af gui=reverse
highlight Error guifg=#ff0000 guibg=#ffffff gui=reverse
highlight DiffAdd guifg=#87d7af guibg=NONE gui=NONE
highlight DiffChange guifg=#ff0000 guibg=NONE gui=NONE
highlight DiffText guifg=#ffd7af guibg=NONE gui=NONE
highlight DiffDelete guifg=#ff0000 guibg=NONE gui=NONE
highlight Debug guifg=NONE guibg=NONE gui=bold
highlight EndOfBuffer guifg=#af00af guibg=NONE gui=bold
highlight Terminal guifg=#87d7af guibg=NONE gui=bold
highlight SignColumn guifg=#ff0000 guibg=NONE gui=NONE
highlight MoreMsg guifg=#00af5f guibg=NONE gui=bold
"highlight WildMenu guifg=#000000 guibg=#ffd700 gui=bold
"highlight CursorColumn guifg=NONE guibg=#d7d7d7 gui=NONE
"highlight TabLine guifg=#000000 guibg=#d7d7d7 gui=underline
"highlight TabLineFill guifg=NONE guibg=NONE gui=reverse
"highlight TabLineSel guifg=#000000 guibg=#ffffff gui=bold
"highlight ToolbarLine guifg=NONE guibg=NONE gui=NONE
"highlight ToolbarButton guifg=NONE guibg=#d7d7d7 gui=bold
"highlight NonText guifg=#005f87 guibg=#d7d7d7 gui=bold
highlight StatuslineTermNC guifg=#ffd700 guibg=#444444 gui=bold
highlight StatuslineTerm guifg=#ffd700 guibg=#444444 gui=bold
highlight Type guifg=#ffd700 guibg=NONE gui=bold
highlight MessageWindow guifg=#8700af guibg=NONE gui=bold
highlight PopupNotification guifg=#8700af guibg=#2e2e2e gui=bold
highlight TabLine guifg=#000000 guibg=#d7d7d7 gui=underline
highlight TabLineFill guifg=NONE guibg=NONE gui=reverse
highlight TabLineSel guifg=#000000 guibg=#ffffff gui=bold
highlight ToolbarLine guifg=NONE guibg=NONE gui=NONE
highlight ToolbarButton guifg=NONE guibg=#d7d7d7 gui=bold
highlight ColorColumn guifg=#800080 guibg=#ffffff gui=NONE
highlight SpellBad guifg=#ff0000 guibg=NONE gui=underline
highlight SpellCap guifg=#00d700 guibg=NONE gui=underline
highlight SpellLocal guifg=#d70000 guibg=NONE gui=underline
highlight SpellRare guifg=#00af5f guibg=NONE gui=underline
  unlet s:t_Co

  finish

endif

" COLOR PARA CTERM
"hi clear

"let g:colors_name = 'saxs'

"let s:t_Co = &t_Co

"if s:t_Co >= 256
"hi Normal ctermfg=202 ctermbg=235 cterm=bold
"hi Cursor ctermfg=196 ctermbg=NONE cterm=bold
"hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CurSearch ctermfg=214 ctermbg=237 cterm=bold
"hi CursorLineFold ctermfg=163 ctermbg=NONE cterm=bold
"hi Folded ctermfg=18 ctermbg=252 cterm=NONE
 "hi CursorLineSign ctermfg=124 ctermbg=NONE cterm=bold
 "hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=NONE 
 "hi LineNrAbove ctermfg=NONE ctermbg=NONE cterm=NONE
 "hi LineNrBelow  ctermfg=NONE ctermbg=NONE cterm=NONE
"hi IncSearch ctermfg=214 ctermbg=237 cterm=bold
"hi Search ctermfg=207 ctermbg=237 cterm=bold
"hi LineNr ctermfg=203 ctermbg=238 cterm=bold
"hi Directory ctermfg=27 ctermbg=NONE cterm=bold
"hi MatchParen ctermfg=196 ctermbg=NONE cterm=bold
"hi ModeMsg ctermfg=203 ctermbg=237 cterm=bold
"hi MsgArea ctermfg=203 ctermbg=237 cterm=bold
"hi Pmenu ctermfg=203 ctermbg=237 cterm=bold
"hi PmenuSel ctermfg=203 ctermbg=235 cterm=bold
"hi PmenuSbar ctermfg=203 ctermbg=237 cterm=bold
"hi Question ctermfg=211 ctermbg=237 cterm=bold
"hi WarningMsg ctermfg=9 ctermbg=8 cterm=bold
"hi StatusLineTerm ctermfg=21 ctermbg=NONE 
"hi Title ctermfg=79 ctermbg=NONE  cterm=bold
"hi Visual ctermfg=NONE ctermbg=237 cterm=bold
"hi VisualNOS ctermfg=NONE ctermbg=21 cterm=NONE
"hi Comment ctermfg=248 ctermbg=NONE cterm=bold
"hi String ctermfg=167 ctermbg=NONE cterm=bold
"hi Character ctermfg=153 ctermbg=NONE cterm=bold
"hi Number ctermfg=208 ctermbg=NONE cterm=bold
"hi Boolean ctermfg=5 ctermbg=NONE cterm=bold
"hi Float ctermfg=5 ctermbg=NONE cterm=bold
"hi Identifier ctermfg=29 ctermbg=NONE cterm=bold
"hi Function ctermfg=113 ctermbg=NONE cterm=bold
"hi Statement ctermfg=160 ctermbg=NONE cterm=bold
"hi Conditional ctermfg=162 ctermbg=NONE cterm=bold
"hi Repeat ctermfg=124 ctermbg=NONE cterm=bold
"hi Label ctermfg=NONE ctermbg=NONE cterm=bold
"hi Operator ctermfg=221 ctermbg=NONE cterm=bold
"hi Keyword ctermfg=166 ctermbg=NONE cterm=bold
"hi Exception ctermfg=9 ctermbg=NONE cterm=bold
"hi Special ctermfg=122 ctermbg=NONE cterm=bold
"hi SpecialComment ctermfg=6 ctermbg=NONE cterm=bold
"hi SpecialKey ctermfg=209 ctermbg=NONE cterm=bold
"hi Underlined ctermfg=86 ctermbg=NONE cterm=bold
"hi VertSplit ctermfg=37  ctermbg=NONE cterm=bold
"hi FoldColumn ctermfg=18 ctermbg=NONE cterm=NONE
"hi FoldColumn ctermfg=221 ctermbg=NONE cterm=NONE
"hi ErrorMsg ctermfg=196 ctermbg=253 cterm=reverse
"hi Error ctermfg=1 ctermbg=15 cterm=reverse
"hi DiffAdd ctermfg=70 ctermbg=NONE cterm=NONE
"hi DiffChange ctermfg=9 ctermbg=NONE cterm=NONE
"hi DiffText ctermfg=221 ctermbg=NONE cterm=NONE
"hi DiffDelete ctermfg=196 ctermbg=NONE cterm=NONE
"hi Debug ctermfg=NONE ctermbg=NONE cterm=bold
"hi EndOfBuffer ctermfg=125 ctermbg=NONE cterm=bold
"hi Terminal ctermfg=121 ctermbg=NONE cterm=bold
"hi SignColumn ctermfg=9 ctermbg=NONE cterm=NONE
"hi MoreMsg ctermfg=29 ctermbg=NONE cterm=bold
 "hi WildMenu ctermfg=16 ctermbg=226 cterm=bold
 "hi CursorColumn ctermfg=NONE ctermbg=252 cterm=NONE
 "hi TabLine ctermfg=16 ctermbg=250 cterm=underline
 "hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=reverse
 "hi TabLineSel ctermfg=16 ctermbg=254 cterm=bold
 "hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
 "hi ToolbarButton ctermfg=NONE ctermbg=250 cterm=bold
 "hi NonText ctermfg=21 ctermbg=250 cterm=bold
"hi StatuslineTermNC ctermfg=11 ctermbg=238 cterm=bold
"hi StatuslineTerm ctermfg=11 ctermbg=238 cterm=bold
"hi Type ctermfg=11 ctermbg=NONE cterm=bold
"hi MessageWindow ctermfg=6 ctermbg=NONE cterm=bold
"hi PopupNotification ctermfg=6 ctermbg=8 cterm=bold
"hi TabLine ctermfg=16 ctermbg=250 cterm=underline
"hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=reverse
"hi TabLineSel ctermfg=16 ctermbg=254 cterm=bold
"hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
"hi ToolbarButton ctermfg=NONE ctermbg=250 cterm=bold
"hi ColorColumn ctermfg=5 ctermbg=231 cterm=NONE
"hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
"hi SpellCap ctermfg=40 ctermbg=NONE cterm=underline
"hi SpellLocal ctermfg=124 ctermbg=NONE cterm=underline
"hi SpellRare ctermfg=29 ctermbg=NONE cterm=underline
"  unlet s:t_Co
"  finish
"endif
