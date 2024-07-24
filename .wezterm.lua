local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaCove NF")
config.font_size = 12
-- config.color_scheme = "tokyonight_moon"
config.color_scheme = "Dracula (Official)"
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

return config
