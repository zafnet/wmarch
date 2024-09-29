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

highlight Normal guifg=#00ff00 guibg=#262626 gui=bold
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
