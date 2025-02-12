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

-- Abrir url con firefox incognito
vim.keymap.set("n", "gx", function()
    local url = vim.fn.expand("<cfile>")
    if url ~= "" then
        vim.fn.jobstart({"firefox", "-private-window", url}, {detach = true})
    end
end, { silent = true })

-- Opciones Netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 50
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_preview = 1
vim.g.netrw_special_syntax = 1

-- Configuración de colores para grupos de netrw
local function hig(groups)
    for group, properties in pairs(groups) do
    vim.api.nvim_set_hl(0, group, properties)
    end
end

local high = {
   netrwMarkFile = { fg = "#ff5faf", bg = "NONE", bold = true },
   Directory = { fg = "#176afd", bg = "NONE", bold = true },
   netrwBak = { fg = "#A6E22E", bg = "NONE" },
   netrwCompress = { fg = "#ff87af", bg = "NONE" },
   netrwCoreDump = { fg = "#005FFF", bg = "NONE" },
   netrwData = { fg = "#005faf", bg = "NONE" },
   netrwDoc = { fg = "#00af5f", bg = "NONE" },
   netrwHdr = { fg = "#FF8700", bg = "NONE" },
   netrwLex = { fg = "#FF5F5F", bg = "NONE" },
   netrwYacc = { fg = "#5F87FF", bg = "NONE" },
   netrwLib = { fg = "#FFAF00", bg = "NONE" },
   netrwMakefile = { fg = "#00FF00", bg = "#5F5F5F" },
   netrwObj = { fg = "#00FFFF", bg = "NONE" },
   netrwPix = { fg = "#FFFF00", bg = "NONE" },
   netrwTags = { fg = "#87D700", bg = "NONE" },
   netrwTilde = { fg = "#FF0000", bg = "NONE" },
   netrwTmp = { fg =  "#D700D7", bg = "NONE" },
   netrwSymLink = { fg = "#fa6aa5", bg = "NONE" },
}
hig(high)
