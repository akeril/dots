local wezterm = require("wezterm")
local sessionizer = require("sessionizer")
local config = wezterm.config_builder()
local act = wezterm.action

config.front_end = "WebGpu"
config.enable_wayland = false
config.use_fancy_tab_bar = false
config.color_scheme = "Catppuccin Mocha"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = "f",
		mods = "ALT",
		action = wezterm.action_callback(sessionizer.toggle),
	},
	{
		key = "h",
		mods = "ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = ";",
		mods = "ALT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = ",",
		mods = "ALT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "t",
		mods = "ALT",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "w",
		mods = "ALT",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "p",
		mods = "ALT",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "n",
		mods = "ALT",
		action = act.ActivateTabRelative(1),
	},
}

wezterm.on("update-right-status", function(window)
	local date = wezterm.strftime("%Y-%m-%d | %H:%M")

	local bat = ""
	for _, b in ipairs(wezterm.battery_info()) do
		bat = "" .. string.format("%.0f%%", b.state_of_charge * 100)
	end

	window:set_right_status(wezterm.format({
		{ Text = bat .. " | " .. date },
	}))
end)

wezterm.on("format-tab-title", function(tab, _, _, _, _, _)
	local title = tab.active_pane.foreground_process_name
	title = title:gsub("(.*[/\\])(.*)", "%2")
	title = string.format(" %s ", title)
	return title
end)

return config
