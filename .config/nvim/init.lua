require('sets')
require('maps')
require('funcs')
require('netrw')
require('abrevs')
require('barlua')

-- Tema minimo por defecto si no encuentra el custom
local success, _ = pcall(require, 'themes.saxs')

if not success then
  -- Si falla la carga del tema "saxs", define el tema mínimo
  vim.g.colors_name = 'minimal'

  local function hi_set(groups)
    for group, properties in pairs(groups) do
      vim.api.nvim_set_hl(0, group, properties)
    end
  end

  local hi_minimal = {
    Normal =         { fg = "NONE",    bg = "NONE" },
    CursorLine =     { fg = "NONE",    bg = "#444444", bold = false },
    Function =       { fg = "#ff5f5f", bg = "NONE",    bold = true },
    String =         { fg = "#ff8700", bg = "NONE",    bold = true },
    ErrorMsg =       { fg = "#ff0000", bg = "#444444", bold = true },
    WarningMsg =     { fg = "#ffaa00", bg = "#444444", bold = true },
    LineNr =         { fg = "#87ff87" },
    Comment =        { fg = "#888888", italic = true },
    SpecialComment = { fg = "#a00f78", bg = "NONE",    bold = true },
    Visual =         { bg = "#444444" },
    MatchParen =     { fg = "#8700af", bg = "NONE",    bold = true },
    Number =         { fg = "#f0f07d", bg = "NONE",    bold = true },
    Operator =       { fg = "#fa5f87", bg = "NONE",    bold = true },
    Keyword =        { fg = "#d787af", bg = "NONE",    bold = true },
    Exception =      { fg = "#d7005f", bg = "NONE",    bold = true },
    Conditional =    { fg = "#ff55ff", bg = "NONE",    bold = true },
    Statement =      { fg = "#7005fd", bg = "NONE",    bold = true },
    Character =      { fg = "#d787af", bg = "NONE",    bold = true },
    SpecialComment = { fg = "#8700af", bg = "NONE",    bold = true },
    SpecialKey =     { fg = "#ff5f5f", bg = "NONE",    bold = true },
    Boolean =        { fg = "#008080", bg = "NONE",    bold = true },
  }

  hi_set(hi_minimal)
end
