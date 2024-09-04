-- Crear un grupo de autocomandos para resaltar cuando se copia una línea
local highlight_yank_group = vim.api.nvim_create_augroup('HighlightYank', {})

-- Definir el autocomando dentro del grupo
vim.api.nvim_create_autocmd('TextYankPost', {
    group = highlight_yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({ timeout = 40 })
    end,
})
