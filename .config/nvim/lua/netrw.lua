-- Variables para Netrw
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Abrir netrw con lider ñ
map('n', '<leader>ñ', ':Vexplore<CR>', opts)

-- Autocomando para que la letra "l" haga de "enter" y solo se aplique en Netrw
vim.api.nvim_create_autocmd('filetype', {
    pattern = 'netrw',
    callback = function()
      local bind = function(lhs, rhs)
    map('n', lhs, rhs, {remap = true, buffer = true})
      end
    -- Asociar letra "l" para abrir directorios
      bind('l', '<CR>')
    end
})

-- Opciones Netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 50
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_preview = 1
vim.g.netrw_special_syntax = 1

-- Funcion Para Resaltado
local hi = function(group, properties)
    vim.api.nvim_set_hl(0, group, properties)
end

-- Configuración de colores para grupos de netrw
hi("netrwMarkFile", { fg = "#ff5faf", bg = "NONE", bold = true })
hi("Directory", { fg = "#176afd", bg = "NONE", bold = true })
hi("netrwBak", { fg = "#A6E22E", bg = "NONE" })
hi("netrwCompress", { fg = "#ff87af", bg = "NONE" })
hi("netrwCoreDump", { fg = "#005FFF", bg = "NONE" })
hi("netrwData", { fg = "#005faf", bg = "NONE" })
hi("netrwDoc", { fg = "#00af5f", bg = "NONE" })
hi("netrwHdr", { fg = "#FF8700", bg = "NONE" })
hi("netrwLex", { fg = "#FF5F5F", bg = "NONE" })
hi("netrwYacc", { fg = "#5F87FF", bg = "NONE" })
hi("netrwLib", { fg = "#FFAF00", bg = "NONE" })
hi("netrwMakefile", { fg = "#00FF00", bg = "#5F5F5F" })
hi("netrwObj", { fg = "#00FFFF", bg = "NONE" })
hi("netrwPix", { fg = "#FFFF00", bg = "NONE" })
hi("netrwTags", { fg = "#87D700", bg = "NONE" })
hi("netrwTilde", { fg = "#FF0000", bg = "NONE" })
hi("netrwTmp", { fg =  "#D700D7", bg = "NONE" })
hi("netrwSymLink", { fg = "#fa6aa5", bg = "NONE" })
