-- Wezterm API
local wezterm = require("wezterm")

-- Config object
local config = wezterm.config_builder()

-- Looks
-- Color scheme
config.color_scheme = "Gruvbox Dark (Gogh)"
-- Font
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18.0
-- Tab bar
config.tab_bar_at_bottom = true
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
	enabled_modules = {
		hostname = false,
	},
})

-- Keybinds
-- Multiplexer leader
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- Multiplexer pane splits
	{
		mods = "LEADER",
		key = "-",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "|",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- Multiplexer close pane
	{
		mods = "LEADER",
		key = "q",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	-- Multiplexer maximize pane
	{
		mods = "LEADER",
		key = "m",
		action = wezterm.action.TogglePaneZoomState,
	},
	-- Close tab
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
}
-- QOL
config.window_close_confirmation = "NeverPrompt"

return config
