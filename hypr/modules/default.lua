-- displays
local monitors_path = os.getenv("HOME") .. "/.local/state/hypr/display.lua"
local ok, err = pcall(dofile, monitors_path)
if not ok then
	hl.print("Failed to load display.lua: " .. tostring(err))
end

-- startup apps
hl.on("hyprland.start", function () 
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("noctalia")
end)

-- hyprshot directory
hl.env("HYPRSHOT_DIR", "/home/tau/hyprshot")
