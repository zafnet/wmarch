-- VARIABLES DE ENTORNO
-- Qt
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- Variables del backend de GTK (Toolkit Backend Variables)
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- Especificaciones xdg
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Tamaños de cursor X11 y hyprland
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Variables Para firefox
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("MOZ_DBUS_REMOTE", "1")

-- Variables Personalizadas (usando os.getenv para el HOME)
local home = os.getenv("HOME")
hl.env("HYPRLAND_CONFIG", "/.config/hypr/hyprland.lua")
hl.env("ZDOTDIR", home .. "/.config/zshc")
hl.env("BROWSER", "vivaldi-stable")
hl.env("BROWSER2", "/usr/bin/firefox")
hl.env("GTK2_RC_FILES", home .. "/.config/pcmanfm/.gtkrc-2.0")
hl.env("LC_ALL", "es_AR.UTF8")
hl.env("PATH", os.getenv("PATH") .. ":" .. home .. "/.local/bin")
hl.env("FZF_DEFAULT_COMMAND", "fd . / -H -tf -td -E undodir")
hl.env("MANPAGER", "nvim +Man!")
hl.env("EDITOR", "nvim")
