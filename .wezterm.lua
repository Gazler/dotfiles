-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Solarized (dark) (terminal.sexy)'

config.font_size = 13.0

config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
  active_titlebar_bg = '#002b36',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#002b36',
}

config.colors = {
  tab_bar = {
    -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#575757',
  },
}

config.enable_scroll_bar = true

config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}

-- config.font = wezterm.font('JetBrains Mono', { weight = 400 })
config.font = wezterm.font('Source Code Pro', { weight = 400 })

config.font_rules = {
  {
    intensity = 'Bold',
    -- font = wezterm.font('JetBrains Mono', { weight = 700 }),
    font = wezterm.font('Source Code Pro', { weight = 700 }),
  },
}

-- and finally, return the configuration to wezterm
return config
