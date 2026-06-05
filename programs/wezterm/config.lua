local wezterm = require "wezterm"
local config  = wezterm.config_builder()

config.enable_tab_bar = false
config.color_scheme   = "Catppuccin Frappé"
config.font	      = wezterm.font "Iosevka 20"

config.keys 	      = {
   {	action = wezterm.action.CloseCurrentTab({ confirm = true })
   ,	mods   = "ALT"
   ,	key    = "d"
   },
   {	action = wezterm.action.SpawnTab("CurrentPaneDomain")
   ,	mods   = "ALT"
   ,	key    = "c"
   },
   { 	action = wezterm.action.ActivateTabRelative(-1)
   ,	mods   = "ALT"
   ,	key    = "j"
   },
   {	action = wezterm.action.ActivateTabRelative(1)
   ,	mods   = "ALT"
   ,	key    = "k"
   }
}

return config;
