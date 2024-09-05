-- Wezterm API
local wezterm = require("wezterm")

-- Config object
local config = wezterm.config_builder()

-- Color scheme --
config.color_scheme = "Gruvbox Dark (Gogh)"
-- Font --
config.font = wezterm.font("JetBrains Mono")
config.font_size = 16.0
-- Tab bar --
config.tab_bar_at_bottom = true
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
	enabled_modules = {
		hostname = false,
	},
})

-- Nvim multiplexer leader --
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

-- Keybinds --
config.keys = {
	-- Multiplexer management --
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
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		mods = "LEADER",
		key = "m",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		mods = "CMD",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "CMD",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "CMD",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "CMD",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	-- Tab management --
	{
		mods = "LEADER",
		key = "c",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER",
		key = "q",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "1",
		action = wezterm.action.ActivateTab(0),
	},
	{
		mods = "LEADER",
		key = "2",
		action = wezterm.action.ActivateTab(1),
	},
	{
		mods = "LEADER",
		key = "3",
		action = wezterm.action.ActivateTab(2),
	},
	{
		mods = "LEADER",
		key = "4",
		action = wezterm.action.ActivateTab(3),
	},
	{
		mods = "LEADER",
		key = "5",
		action = wezterm.action.ActivateTab(4),
	},
	{
		mods = "LEADER",
		key = "6",
		action = wezterm.action.ActivateTab(5),
	},
	{
		mods = "LEADER",
		key = "7",
		action = wezterm.action.ActivateTab(6),
	},
	{
		mods = "LEADER",
		key = "8",
		action = wezterm.action.ActivateTab(7),
	},
	{
		mods = "LEADER",
		key = "9",
		action = wezterm.action.ActivateTab(8),
	},
}
-- QOL --
config.window_close_confirmation = "NeverPrompt"

return config
