--displays
	-- internal screen
	-- hl.monitor({
	-- 	output   = "eDP-1",
	-- 	mode     = "1920x1080@144",
	-- 	position = "auto",
	-- 	scale    = "1",
	-- })
	-- hl.monitor({ output = "HDMI-A-1", disabled = true })

	-- external monitor
	hl.monitor({
		output   = "HDMI-A-1",
		mode     = "1920x1080@144",
		position = "auto",
		scale    = "1",
	})
	hl.monitor({ output = "eDP-1", disabled = true })

-- startup apps
hl.on("hyprland.start", function () 
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("noctalia")
end)

-- hyprshot directory
hl.env("HYPRSHOT_DIR", "/home/tau/hyprshot")
