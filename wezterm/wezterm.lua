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

-- Nvim multiplexer integration
local function is_vim(pane)
	-- this is set by the plugin, and unset on ExitPre in Neovim
	return pane:get_user_vars().IS_NVIM == "true"
end

local direction_keys = {
	h = "Left",
	j = "Down",
	k = "Up",
	l = "Right",
}

local function split_nav(resize_or_move, key)
	return {
		key = key,
		mods = resize_or_move == "resize" and "META" or "CTRL",
		action = wezterm.action_callback(function(win, pane)
			if is_vim(pane) then
				-- pass the keys through to vim/nvim
				win:perform_action({
					SendKey = { key = key, mods = resize_or_move == "resize" and "META" or "CTRL" },
				}, pane)
			else
				if resize_or_move == "resize" then
					win:perform_action({ AdjustPaneSize = { direction_keys[key], 3 } }, pane)
				else
					win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
				end
			end
		end),
	}
end

-- Multiplexer leader
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
-- Keybinds
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
	-- Move between split panes
	split_nav("move", "h"),
	split_nav("move", "j"),
	split_nav("move", "k"),
	split_nav("move", "l"),
	-- Resize panes
	split_nav("resize", "h"),
	split_nav("resize", "j"),
	split_nav("resize", "k"),
	split_nav("resize", "l"),
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
