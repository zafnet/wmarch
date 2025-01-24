"███╗   ███╗ ██████╗ ██╗  ██╗██╗  ██╗   ██╗██╗███╗   ███╗    
"████╗ ████║██╔═══██╗╚██╗██╔╝██║  ██║   ██║██║████╗ ████║    
"██╔████╔██║██║   ██║ ╚███╔╝ ██║  ██║   ██║██║██╔████╔██║    
"██║╚██╔╝██║██║   ██║ ██╔██╗ ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║    
"██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗██║██╗╚████╔╝ ██║██║ ╚═╝ ██║    
"╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

" COLOR PARA GUI MOXI
hi clear

let g:colors_name = 'moxi'

let s:t_Co = &t_Co

if s:t_Co >= 256
 hi Normal guifg=#ff8700 guibg=#262626 gui=bold
 hi Cursor guifg=#ff0000 guibg=NONE gui=bold
 hi CursorLine guifg=NONE guibg=NONE gui=NONE
 hi CursorLineFold guifg=#d75f87 guibg=NONE gui=bold
 "hi cursorlinesign ctermfg=124 ctermbg=none cterm=bold
 "hi cursorlinenr ctermfg=none ctermbg=none cterm=none 
 "hi linenrabove ctermfg=none ctermbg=none cterm=none
 "hi linenrbelow  ctermfg=none ctermbg=none cterm=none
 "hi define ctermfg=14 ctermbg=237 cterm=bold
 hi CurSearch guifg=#ffaf00 guibg=#3a3a3a gui=bold
 hi IncSearch guifg=#00af00 guibg=#262626 gui=bold
 hi Folded guifg=#00005f guibg=#d7d7d7 gui=NONE
 hi Search guifg=#ff5faf guibg=#3a3a3a gui=bold
 hi LineNr guifg=#005f87 guibg=#444444 gui=bold
 hi Directory guifg=#005faf guibg=NONE gui=bold
 hi MatchParen guifg=#ff0000 guibg=NONE gui=bold
 hi ModeMsg guifg=#005f87 guibg=#000000 gui=bold
 hi MsgArea guifg=#005f87 guibg=#3a3a3a gui=bold
 hi Pmenu guifg=#d75f87 guibg=#3a3a3a gui=bold
 hi PmenuSel guifg=#d75f87 guibg=#262626 gui=bold
 hi PmenuSbar guifg=#d75f87 guibg=#3a3a3a gui=bold
 hi Question guifg=#ff87af guibg=#3a3a3a gui=bold
 hi WarningMsg guifg=#ff0000 guibg=#2e2e2e gui=bold
 hi Title guifg=#5faf87 guibg=NONE gui=bold
 hi Visual guifg=NONE guibg=#3a3a3a gui=bold
 hi VisualNOS guifg=NONE guibg=#005f87 gui=NONE
 hi Comment guifg=#b2b2b2 guibg=NONE gui=bold
 hi String guifg=#ff5f5f guibg=NONE gui=bold
 hi Character guifg=#d787af guibg=NONE gui=bold
 hi Number guifg=#ff8700 guibg=NONE gui=bold
 hi Boolean guifg=#800080 guibg=NONE gui=bold
 hi Float guifg=#800080 guibg=NONE gui=bold
 hi Identifier guifg=#00af5f guibg=NONE gui=bold
 hi Function guifg=#ffff5f guibg=NONE gui=bold
 hi Statement guifg=#d7005f guibg=NONE gui=bold
 hi Conditional guifg=#d75f87 guibg=NONE gui=bold
 hi Repeat guifg=#d70000 guibg=NONE gui=bold
 hi Label guifg=NONE guibg=NONE gui=bold
 hi Operator guifg=#ffd7af guibg=NONE gui=bold
 hi Keyword guifg=#ff5f5f guibg=NONE gui=bold
 hi Exception guifg=#ff0000 guibg=NONE gui=bold
 hi Special guifg=#ff8700 guibg=NONE gui=bold
 hi SpecialComment guifg=#ffafd7 guibg=NONE gui=bold
 hi SpecialKey guifg=#ff5f5f guibg=NONE gui=bold
 hi Underlined guifg=#5faf5f guibg=NONE gui=bold
 hi VertSplit guifg=#00af87 guibg=NONE gui=bold
 hi FoldColumn guifg=#00005f guibg=NONE gui=NONE
 hi ErrorMsg guifg=#ff0000 guibg=#ffd7af gui=reverse
 hi Error guifg=#ff0000 guibg=#ffffff gui=reverse
 hi DiffAdd guifg=#87d7af guibg=NONE gui=NONE
 hi DiffChange guifg=#ff0000 guibg=NONE gui=NONE
 hi DiffText guifg=#ffd7af guibg=NONE gui=NONE
 hi DiffDelete guifg=#ff0000 guibg=NONE gui=NONE
 hi Debug guifg=NONE guibg=NONE gui=bold
 hi EndOfBuffer guifg=#af00af guibg=NONE gui=bold
 hi Terminal guifg=#87d7af guibg=NONE gui=bold
 hi SignColumn guifg=#ff0000 guibg=NONE gui=NONE
 hi MoreMsg guifg=#00af5f guibg=NONE gui=bold
 "hi wildmenu ctermfg=16 ctermbg=226 cterm=bold
 "hi cursorcolumn ctermfg=none ctermbg=252 cterm=none
 "hi tabline ctermfg=16 ctermbg=250 cterm=underline
 "hi tablinefill ctermfg=none ctermbg=none cterm=reverse
 "hi tablinesel ctermfg=16 ctermbg=254 cterm=bold
 "hi toolbarline ctermfg=none ctermbg=none cterm=none
 "hi toolbarbutton ctermfg=none ctermbg=250 cterm=bold
 "hi nontext ctermfg=21 ctermbg=250 cterm=bold
 "hi statuslinetermnc ctermfg=11 ctermbg=238 cterm=bold
 "hi statuslineterm ctermfg=11 ctermbg=238 cterm=bold
 hi Type guifg=#ffd700 guibg=NONE gui=bold
 hi MessageWindow guifg=#8700af guibg=NONE gui=bold
 hi PopupNotification guifg=#8700af guibg=#2e2e2e gui=bold
 hi TabLine guifg=#000000 guibg=#d7d7d7 gui=underline
 hi TabLineFill guifg=NONE guibg=NONE gui=reverse
 hi TabLineSel guifg=#000000 guibg=#ffffff gui=bold
 hi ToolbarLine guifg=NONE guibg=NONE gui=NONE
 hi ToolbarButton guifg=NONE guibg=#d7d7d7 gui=bold
 hi ColorColumn guifg=#800080 guibg=#ffffff gui=NONE
 hi SpellBad guifg=#ff0000 guibg=NONE gui=underline
 hi SpellCap guifg=#00af00 guibg=NONE gui=underline
 hi SpellLocal guifg=#d70000 guibg=NONE gui=underline
 hi SpellRare guifg=#00af5f guibg=NONE gui=underline
  unlet s:t_Co
  finish
endif

" COLOR PARA CTERM MOXI
"hi clear

"let g:colors_name = 'moxi'

"let s:t_Co = &t_Co

"if s:t_Co >= 256
"hi Normal ctermfg=202 ctermbg=235 cterm=bold
"hi Cursor ctermfg=196 ctermbg=NONE cterm=bold
"hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CursorLineFold ctermfg=163 ctermbg=NONE cterm=bold
 "hi CursorLineSign ctermfg=124 ctermbg=NONE cterm=bold
 "hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=NONE 
 "hi LineNrAbove ctermfg=NONE ctermbg=NONE cterm=NONE
 "hi LineNrBelow  ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CurSearch ctermfg=214 ctermbg=237 cterm=bold
"hi IncSearch ctermfg=34 ctermbg=235 cterm=bold
"hi Folded ctermfg=18 ctermbg=252 cterm=NONE
"hi Search ctermfg=207 ctermbg=237 cterm=bold
"hi LineNr ctermfg=31 ctermbg=238 cterm=bold
"hi Directory ctermfg=27 ctermbg=NONE cterm=bold
"hi MatchParen ctermfg=196 ctermbg=NONE cterm=bold
"hi ModeMsg ctermfg=31 ctermbg=237 cterm=bold
"hi MsgArea ctermfg=31 ctermbg=237 cterm=bold
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
"hi Function ctermfg=228 ctermbg=NONE cterm=bold
"hi Statement ctermfg=160 ctermbg=NONE cterm=bold
"hi Conditional ctermfg=162 ctermbg=NONE cterm=bold
"hi Repeat ctermfg=124 ctermbg=NONE cterm=bold
"hi Label ctermfg=NONE ctermbg=NONE cterm=bold
"hi Operator ctermfg=221 ctermbg=NONE cterm=bold
"hi Keyword ctermfg=166 ctermbg=NONE cterm=bold
"hi Exception ctermfg=9 ctermbg=NONE cterm=bold
"hi Special ctermfg=208 ctermbg=NONE cterm=bold
"hi SpecialComment ctermfg=213 ctermbg=NONE cterm=bold
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
