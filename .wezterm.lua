local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- WINDOW
config.window_decorations = "NONE"
config.enable_tab_bar = false

-- Configuración de transparencia

config.window_background_opacity = 0.9

--FONT
config.font = wezterm.font("BlexMono Nerd Font", { weight = "Medium" })

config.font_size = 14.0
--WINDOW SIZE
config.initial_cols = 120
config.initial_rows = 30

return config
