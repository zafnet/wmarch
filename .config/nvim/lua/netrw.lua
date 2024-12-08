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

-- Colores Netrw
vim.cmd [[ hi link netrwMarkFile search ]]
vim.cmd [[ hi netrwBak ctermfg=78 ctermbg=NONE ]]
vim.cmd [[ hi netrwCompress ctermfg=135 ctermbg=NONE ]]
vim.cmd [[ hi netrwCoreDump ctermfg=21 ctermbg=NONE ]]
vim.cmd [[ hi netrwData ctermfg=41 ctermbg=NONE ]]
vim.cmd [[ hi netrwDoc ctermfg=15 ctermbg=NONE ]]
vim.cmd [[ hi netrwHdr ctermfg=208 ctermbg=NONE ]]
vim.cmd [[ hi netrwLex ctermfg=204 ctermbg=NONE ]]
vim.cmd [[ hi netrwYacc ctermfg=44 ctermbg=NONE ]]
vim.cmd [[ hi netrwLib ctermfg=124 ctermbg=NONE ]]
vim.cmd [[ hi netrwMakefile ctermfg=10 ctermbg=238 ]]
vim.cmd [[ hi netrwObj ctermfg=210 ctermbg=NONE ]]
vim.cmd [[ hi netrwPix ctermfg=11 ctermbg=NONE ]]
vim.cmd [[ hi netrwTags ctermfg=82 ctermbg=NONE ]]
vim.cmd [[ hi netrwTilde ctermfg=196 ctermbg=NONE ]]
vim.cmd [[ hi netrwTmp ctermfg=125 ctermbg=NONE ]]
vim.cmd [[ hi netrwYacc ctermfg=75 ctermbg=NONE ]]
vim.cmd [[ hi netrwSymLink ctermfg=219 ctermbg=NONE ]]
