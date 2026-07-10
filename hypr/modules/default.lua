-- startup apps
hl.on("hyprland.start", function () 
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("noctalia")
end)

-- hyprshot directory
hl.env("HYPRSHOT_DIR", "/home/tau/hyprshot")
