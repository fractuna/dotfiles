-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- -- For example, changing the initial geometry for new windows:
-- config.initial_cols = 120
-- config.initial_rows = 28

-- or, changing the font size and color scheme.
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 60
config.window_background_opacity = 0.89
config.font = wezterm.font("0xProto Nerd Font")
config.font_size = 11
config.color_scheme = "Sandcastle (base16)"

-- Finally, return the configuration to wezterm:
return config
