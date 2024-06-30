"███╗   ███╗ ██████╗ ██╗  ██╗██╗  ██╗   ██╗██╗███╗   ███╗    
"████╗ ████║██╔═══██╗╚██╗██╔╝██║  ██║   ██║██║████╗ ████║    
"██╔████╔██║██║   ██║ ╚███╔╝ ██║  ██║   ██║██║██╔████╔██║    
"██║╚██╔╝██║██║   ██║ ██╔██╗ ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║    
"██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗██║██╗╚████╔╝ ██║██║ ╚═╝ ██║    
"╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

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
