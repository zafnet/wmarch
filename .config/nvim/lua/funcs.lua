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

-- Crear un grupo de autocomandos para cambiar el directorio de trabajo cuando usamos fzf
vim.api.nvim_create_augroup('ChangeWorkingDirectory', { clear = true })

-- Establecer un autocomando para BufEnter que cambie el directorio cuando usamos fzf
vim.api.nvim_create_autocmd('BufEnter', {
  group = 'ChangeWorkingDirectory',
  pattern = '*',
  callback = function()
    vim.cmd('silent! lcd ' .. vim.fn.expand('%:p:h'))
  end,
})
