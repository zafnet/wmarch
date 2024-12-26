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

-- Vincular un grupo de resaltado
vim.api.nvim_set_hl(0, "netrwMarkFile", { link = "search" })

-- Configuración de colores para grupos de netrw
vim.api.nvim_set_hl(0, "netrwBak", { fg = 78, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwCompress", { fg = 135, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwCoreDump", { fg = 21, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwData", { fg = 41, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwDoc", { fg = 15, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwHdr", { fg = 208, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwLex", { fg = 204, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwYacc", { fg = 44, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwLib", { fg = 124, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwMakefile", { fg = 10, bg = 238 })
vim.api.nvim_set_hl(0, "netrwObj", { fg = 210, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwPix", { fg = 11, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwTags", { fg = 82, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwTilde", { fg = 196, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwTmp", { fg = 125, bg = "NONE" })
vim.api.nvim_set_hl(0, "netrwSymLink", { fg = 219, bg = "NONE" })
