function widget:GetInfo()
	return {
		name      = "therxZK",
		desc      = "Shows a window",
		author    = "GoogleFrog",
		date      = "23 July 2020",
		license   = "GPL",
		layer     = 0,
		enabled   = true,
	}
end



local spectating = Spring.GetSpectatingState()
local allied_teams

local is_RoI = (Spring.GetModOptions().overdrivesharingscheme ~= "0")

local window, fake_window
local name_labels = {}
local roi_labels = {}
local base_labels = {}
local base_income_labels = {}
local od_income_labels = {}

function widget:Initialize()
	local Chili = WG.Chili
	if not Chili then
		widgetHandler:RemoveWidget()
		return
	end

	local window = Chili.Window:New {
		caption = "Hello Widget",
		x = "30%",
		y = "30%",
		right = "20%",
		bottom = "20%",
		parent = Chili.Screen0,
		classname = "main_window",
	}

	Chili.Label:New {
		x = 0,
		y = 50,
		right = 0,
		parent = window,
		align = "center",
		valign = "center",
		caption = "Hello Widget",
		fontsize = 64,
		textColor = {1,1,1,1},
	}

	Chili.Label:New {
		x = 0,
		y = 180,
		right = 0,
		parent = window,
		align = "center",
		valign = "center",
		caption = "therxZK test branch",
		fontsize = 16,
		textColor = {1,1,1,1},
	}
end
