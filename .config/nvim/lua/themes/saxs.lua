-- theme saxs para gui

-- Establece el nombre de los colores
vim.g.colors_name = 'saxs'

-- Función auxiliar para establecer colores
local function hi_set(groups)
   for group, properties in pairs(groups) do
      vim.api.nvim_set_hl(0, group, properties)
   end
end

-- Configuraciones de colores
local hi_lig = {
  Normal =            { fg = "NONE",    bg = "NONE",    bold = true },
  Cursor =            { fg = "#ff0000", bg = "NONE",    bold = true },
  CursorLine =        { fg = "NONE",    bg = "#444444", bold = false },
  CurSearch =         { fg = "#ffaf00", bg = "#3a3a3a", bold = true },
  CursorLineFold =    { fg = "#ff5f5f", bg = "NONE",    bold = true },
  Folded =            { fg = "#00af5f", bg = "#3a3a3a", bold = false },
  IncSearch =         { fg = "#ffaf00", bg = "#3a3a3a", bold = true },
  Search =            { fg = "#ff5faf", bg = "#3a3a3a", bold = true },
  LineNr =            { fg = "#ff5f5f", bg = "#444444", bold = true },
  MatchParen =        { fg = "#ff0000", bg = "NONE",    bold = true },
  ModeMsg =           { fg = "#ff5f5f", bg = "#000000", bold = true },
  MsgArea =           { fg = "#ff5f5f", bg = "#3a3a3a", bold = true },
  Pmenu =             { fg = "#ff5f5f", bg = "#3a3a3a", bold = true },
  PmenuSel =          { fg = "#ff5f5f", bg = "#262626", bold = true },
  PmenuSbar =         { fg = "#ff5f5f", bg = "#3a3a3a", bold = true },
  Question =          { fg = "#ff87af", bg = "#3a3a3a", bold = true },
  WarningMsg =        { fg = "#ffd700", bg = "#2e2e2e", bold = true },
  StatusLineTerm =    { fg = "#005f87", bg = "NONE",    bold = false },
  Title =             { fg = "#5faf87", bg = "NONE",    bold = true },
  Visual =            { fg = "NONE",    bg = "#3a3a3a", bold = true },
  VisualNOS =         { fg = "NONE",    bg = "#005f87", bold = false },
  Comment =           { fg = "#b2b2b2", bg = "NONE",    bold = true },
  String =            { fg = "#ffd700", bg = "NONE",    bold = true },
  Character =         { fg = "#d787af", bg = "NONE",    bold = true },
  Number =            { fg = "#ff8700", bg = "NONE",    bold = true },
  Boolean =           { fg = "#800080", bg = "NONE",    bold = true },
  Float =             { fg = "#800080", bg = "NONE",    bold = true },
  Identifier =        { fg = "#00af5f", bg = "NONE",    bold = true },
  Function =          { fg = "#87ff87", bg = "NONE",    bold = true },
  Statement =         { fg = "#d7005f", bg = "NONE",    bold = true },
  Conditional =       { fg = "#ff5f5f", bg = "NONE",    bold = true },
  Repeat =            { fg = "#d70000", bg = "NONE",    bold = true },
  Label =             { fg = "NONE",    bg = "NONE",    bold = true },
  Operator =          { fg = "#ffd7af", bg = "NONE",    bold = true },
  Keyword =           { fg = "#ff5f5f", bg = "NONE",    bold = true },
  Exception =         { fg = "#ff0000", bg = "NONE",    bold = true },
  Special =           { fg = "#af87af", bg = "NONE",    bold = true },
  SpecialComment =    { fg = "#8700af", bg = "NONE",    bold = true },
  SpecialKey =        { fg = "#ff5f5f", bg = "NONE",    bold = true },
  Underlined =        { fg = "#00ff87", bg = "NONE",    bold = true },
  VertSplit =         { fg = "#00af87", bg = "NONE",    bold = true },
  FoldColumn =        { fg = "#00005f", bg = "NONE",    bold = false },
  ErrorMsg =          { fg = "#ff0000", bg = "#ffd7af", reverse = true },
  Error =             { fg = "#ff0000", bg = "#ffffff", reverse = true },
  DiffAdd =           { fg = "#87d7af", bg = "NONE",    bold = false },
  DiffChange =        { fg = "#ff0000", bg = "NONE",    bold = false },
  DiffText =          { fg = "#ffd7af", bg = "NONE",    bold = false },
  DiffDelete =        { fg = "#ff0000", bg = "NONE",    bold = false },
  Debug =             { fg = "NONE",    bg = "NONE",    bold = true },
  EndOfBuffer =       { fg = "#af00af", bg = "NONE",    bold = true },
  Terminal =          { fg = "#87d7af", bg = "NONE",    bold = true },
  SignColumn =        { fg = "#ff0000", bg = "NONE",    bold = false },
  MoreMsg =           { fg = "#00af5f", bg = "NONE",    bold = true },
  StatuslineTermNC =  { fg = "#ffd700", bg = "#444444", bold = true },
  Type =              { fg = "#ffd700", bg = "NONE",    bold = true },
  MessageWindow =     { fg = "#8700af", bg = "NONE",    bold = true },
  PopupNotification = { fg = "#8700af", bg = "#2e2e2e", bold = true },
  ToolbarLine =       { fg = "NONE",    bg = "NONE",    bold = false },
  ToolbarButton =     { fg = "NONE",    bg = "#d7d7d7", bold = true },
  ColorColumn =       { fg = "#800080", bg = "#ffffff", bold = false },
  SpellBad =          { fg = "#ff0000", bg = "NONE",    underline = true },
  SpellCap =          { fg = "#00d700", bg = "NONE",    underline = true },
  SpellLocal =        { fg = "#d70000", bg = "NONE",    underline = true },
  SpellRare =         { fg = "#00af5f", bg = "NONE",    underline = true },
  TabLine =           { fg = "#444444", bg = "#af87af", bold = true },
  TabLineFill =       { fg = "#444444", bg = "NONE",    bold = true },
  TabLineSel =        { fg = "#444444", bg = "#00af5f", bold = true },
  HighlightUrl =      { fg = "#800080", bg = "#00af5f", reverse = true },
}
hi_set(hi_lig)
