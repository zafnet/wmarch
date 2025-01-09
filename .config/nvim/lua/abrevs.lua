-- Define una tabla con tus abreviaciones
local abreviaciones = {
    { "ab", "bib", "#!/usr/bin/env bash", desc = "Inserta Shebang en modo Insertar" },
    { "cab", "bfs", "buffers", desc = "Mostrar Buffers abiertos" },
    { "cab", "ga", ":!git add -A", desc = "Agregar Todos Los Cambios a Git" },
    { "cab", "gs", ":!git status", desc = "Muestra El Estado De Los Cambios De Git" },
}

-- Itera sobre la tabla y define cada abreviacion
for _, ab in ipairs(abreviaciones) do
    local tipo = ab[1]  -- 'ab' o 'cab'
    local nombre = ab[2]  -- Nombre de la abreviación
    local texto = ab[3]  -- Texto expandido

    -- Llama a vim.cmd para definir la abreviación
    vim.cmd(string.format("%s %s %s", tipo, nombre, texto))
end
