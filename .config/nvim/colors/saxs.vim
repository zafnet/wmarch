"███████╗ █████╗ ██╗  ██╗███████╗  ██╗   ██╗██╗███╗   ███╗    
"██╔════╝██╔══██╗╚██╗██╔╝██╔════╝  ██║   ██║██║████╗ ████║    
"███████╗███████║ ╚███╔╝ ███████╗  ██║   ██║██║██╔████╔██║    
"╚════██║██╔══██║ ██╔██╗ ╚════██║  ╚██╗ ██╔╝██║██║╚██╔╝██║    
"███████║██║  ██║██╔╝ ██╗███████║██╗╚████╔╝ ██║██║ ╚═╝ ██║    
"╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝

hi clear

let g:colors_name = 'saxs'

let s:t_Co = &t_Co

if s:t_Co >= 256
 hi Normal ctermfg=82 ctermbg=235 cterm=bold
 hi Cursor ctermfg=196 ctermbg=NONE cterm=bold
 hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
 hi CurSearch ctermfg=214 ctermbg=237 cterm=bold
 hi CursorLineFold ctermfg=163 ctermbg=NONE cterm=bold
 hi Folded ctermfg=35 ctermbg=237 cterm=NONE
 "hi CursorLineSign ctermfg=124 ctermbg=NONE cterm=bold
 "hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=NONE 
 "hi LineNrAbove ctermfg=NONE ctermbg=NONE cterm=NONE
 "hi LineNrBelow  ctermfg=NONE ctermbg=NONE cterm=NONE
 "hi Define ctermfg=14 ctermbg=237 cterm=bold
 hi IncSearch ctermfg=214 ctermbg=237 cterm=bold
 hi Search ctermfg=207 ctermbg=237 cterm=bold
 hi LineNr ctermfg=203 ctermbg=238 cterm=bold
 hi Directory ctermfg=27 ctermbg=NONE cterm=bold
 hi MatchParen ctermfg=196 ctermbg=NONE cterm=bold
 hi ModeMsg ctermfg=203 ctermbg=0 cterm=bold
 hi MsgArea ctermfg=203 ctermbg=237 cterm=bold
 hi Pmenu ctermfg=203 ctermbg=237 cterm=bold
 hi PmenuSel ctermfg=203 ctermbg=235 cterm=bold
 hi PmenuSbar ctermfg=203 ctermbg=237 cterm=bold
 hi Question ctermfg=211 ctermbg=237 cterm=bold
 hi WarningMsg ctermfg=11 ctermbg=8 cterm=bold
 hi StatusLineTerm ctermfg=21 ctermbg=NONE 
 hi Title ctermfg=79 ctermbg=NONE  cterm=bold
 hi Visual ctermfg=NONE ctermbg=237 cterm=bold
 hi VisualNOS ctermfg=NONE ctermbg=21 cterm=NONE
 hi Comment ctermfg=248 ctermbg=NONE cterm=bold
 hi String ctermfg=227 ctermbg=NONE cterm=bold
 hi Character ctermfg=153 ctermbg=NONE cterm=bold
 hi Number ctermfg=208 ctermbg=NONE cterm=bold
 hi Boolean ctermfg=5 ctermbg=NONE cterm=bold
 hi Float ctermfg=5 ctermbg=NONE cterm=bold
 hi Identifier ctermfg=29 ctermbg=NONE cterm=bold
 hi Function ctermfg=113 ctermbg=NONE cterm=bold
 hi Statement ctermfg=160 ctermbg=NONE cterm=bold
 hi Conditional ctermfg=162 ctermbg=NONE cterm=bold
 hi Repeat ctermfg=124 ctermbg=NONE cterm=bold
 hi Label ctermfg=NONE ctermbg=NONE cterm=bold
 hi Operator ctermfg=221 ctermbg=NONE cterm=bold
 hi Keyword ctermfg=166 ctermbg=NONE cterm=bold
 hi Exception ctermfg=9 ctermbg=NONE cterm=bold
 hi Special ctermfg=122 ctermbg=NONE cterm=bold
 hi SpecialComment ctermfg=6 ctermbg=NONE cterm=bold
 hi SpecialKey ctermfg=209 ctermbg=NONE cterm=bold
 hi Underlined ctermfg=86 ctermbg=NONE cterm=bold
 hi VertSplit ctermfg=37  ctermbg=NONE cterm=bold
 hi FoldColumn ctermfg=18 ctermbg=NONE cterm=NONE
 hi ErrorMsg ctermfg=196 ctermbg=253 cterm=reverse
 hi Error ctermfg=1 ctermbg=15 cterm=reverse
 hi DiffAdd ctermfg=70 ctermbg=NONE cterm=NONE
 hi DiffChange ctermfg=9 ctermbg=NONE cterm=NONE
 hi DiffText ctermfg=221 ctermbg=NONE cterm=NONE
 hi DiffDelete ctermfg=196 ctermbg=NONE cterm=NONE
 hi Debug ctermfg=NONE ctermbg=NONE cterm=bold
 hi EndOfBuffer ctermfg=125 ctermbg=NONE cterm=bold
 hi Terminal ctermfg=121 ctermbg=NONE cterm=bold
 hi SignColumn ctermfg=9 ctermbg=NONE cterm=NONE
 hi MoreMsg ctermfg=29 ctermbg=NONE cterm=bold
 "hi WildMenu ctermfg=16 ctermbg=226 cterm=bold
 "hi CursorColumn ctermfg=NONE ctermbg=252 cterm=NONE
 "hi TabLine ctermfg=16 ctermbg=250 cterm=underline
 "hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=reverse
 "hi TabLineSel ctermfg=16 ctermbg=254 cterm=bold
 "hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
 "hi ToolbarButton ctermfg=NONE ctermbg=250 cterm=bold
 "hi NonText ctermfg=21 ctermbg=250 cterm=bold
 hi StatuslineTermNC ctermfg=11 ctermbg=238 cterm=bold
 hi StatuslineTerm ctermfg=11 ctermbg=238 cterm=bold
 hi Type ctermfg=11 ctermbg=NONE cterm=bold
 hi MessageWindow ctermfg=6 ctermbg=NONE cterm=bold
 hi PopupNotification ctermfg=6 ctermbg=8 cterm=bold
 hi TabLine ctermfg=16 ctermbg=250 cterm=underline
 hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=reverse
 hi TabLineSel ctermfg=16 ctermbg=254 cterm=bold
 hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
 hi ToolbarButton ctermfg=NONE ctermbg=250 cterm=bold
 hi ColorColumn ctermfg=5 ctermbg=231 cterm=NONE
 hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
 hi SpellCap ctermfg=40 ctermbg=NONE cterm=underline
 hi SpellLocal ctermfg=124 ctermbg=NONE cterm=underline
 hi SpellRare ctermfg=29 ctermbg=NONE cterm=underline
  unlet s:t_Co
  finish
endif
