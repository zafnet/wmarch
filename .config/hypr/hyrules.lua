-- REGLAS
hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Regla General: suprimir evento maximize para cualquier clase
hl.window_rule({
   match = { class = ".*" },
   suppress_event = "maximize",
})

-- Reglas Discord
hl.window_rule({
   name = "discord",
   workspace = "6 silent",
   match = { class = "^(discord)$" },
})

-- Reglas ZapZap
hl.window_rule({
   name = "ZapZap",
   workspace = "6 silent",
   match = { class = "^(com.rtosta.zapzap)$" },
})

-- Reglas Firefox (Librería flotante)
hl.window_rule({
    name = "float-firefox-library",
    match = { 
        class = "firefox",
        title = "Library" 
    },
    float = true,
})

-- Reglas XTerm (Opacidad)
hl.window_rule({
    name = "opacity-xterm",
    match = { class = "^(XTerm)$" },
    opacity = 0.9,
})

-- Reglas mpv
hl.window_rule({
    match = { class = "^(mpv)$" },
    float = true,
    size = "725 613",
    move = "60% 16%",
})

-- Reglas cmus
hl.window_rule({
    match = { title = "^(com\\.cmus)$" },
    float = true,
    size = "725 613",
    move = "60% 16%",
})

-- Reglas upda_term
hl.window_rule({
    match = { title = "^(upda_term)$" },
    float = true,
    center = true,
    size = "725 613",
})

-- Reglas para File Roller
hl.window_rule({
    match = { class = "^(org\\.gnome\\.FileRoller)$" },
    float = true,
    size = "725 613",
    move = "60% 16%",
})

hl.workspace_rule({ workspace = "4", layout = "scrolling" })
