-- source display from .local/state/hypr/display.lua
local monitors_path = os.getenv("HOME") .. "/.local/state/hypr/display.lua"
local ok, err = pcall(dofile, monitors_path)
if not ok then
	hl.print("Failed to load display.lua: " .. tostring(err))
end

-- source blur from from .local/state/hypr/blur.lua
local blur_config = os.getenv("HOME") .. "/.local/state/hypr/blur.lua"
if os.rename(blur_config, blur_config) then
    dofile(blur_config)
end

-- startup apps
hl.on("hyprland.start", function () 
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("noctalia")
end)

-- hyprshot directory
hl.env("HYPRSHOT_DIR", "/home/tau/hyprshot")
