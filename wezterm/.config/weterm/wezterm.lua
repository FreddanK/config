local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = "catppuccin-macchiato"
config.font = wezterm.font 'CommitMono Nerd Font Mono'
config.hide_tab_bar_if_only_one_tab = true

return config
