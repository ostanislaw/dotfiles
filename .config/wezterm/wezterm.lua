local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Theme: Catppuccin (built into WezTerm). Flavors: Latte, Frappe, Macchiato, Mocha
config.color_scheme = "Catppuccin Macchiato"

-- Font (matches Alacritty / gnome-terminal)
-- config.font = wezterm.font("SauceCodePro Nerd Font Mono")
config.font = wezterm.font('JetBrains Mono')
config.font_size = 14.0

-- Shell
config.default_prog = { "/usr/bin/fish", "-l" }

-- Scrollback (matches Alacritty history)
config.scrollback_lines = 10000

-- Hide the tab bar
-- config.enable_tab_bar = false

config.use_fancy_tab_bar = false

-- Align the retro tab bar with Catppuccin Macchiato
config.colors = {
  tab_bar = {
    background = "#1e2030", -- mantle
    active_tab = {
      bg_color = "#8aadf4", -- blue
      fg_color = "#1e2030",
    },
    inactive_tab = {
      bg_color = "#494d64", -- surface1
      fg_color = "#cad3f5", -- text
    },
    inactive_tab_hover = {
      bg_color = "#363a4f", -- surface0
      fg_color = "#cad3f5", -- text
    },
    new_tab = {
      bg_color = "#1e2030",
      fg_color = "#a5adcb",
    },
    new_tab_hover = {
      bg_color = "#363a4f",
      fg_color = "#cad3f5",
    },
  },
}

config.window_background_opacity = 0.95
config.window_close_confirmation = "NeverPrompt"

return config
