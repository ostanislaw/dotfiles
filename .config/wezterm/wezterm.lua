local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Theme: Catppuccin (built into WezTerm). Flavors: Latte, Frappe, Macchiato, Mocha
config.color_scheme = "Catppuccin Macchiato"

-- Font (matches Alacritty / gnome-terminal)
config.font = wezterm.font("SauceCodePro Nerd Font Mono")
config.font_size = 16.0

-- Shell
config.default_prog = { "/usr/bin/fish", "-l" }

-- Scrollback (matches Alacritty history)
config.scrollback_lines = 10000

return config
