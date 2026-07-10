-- appearance
hl.config({
	general = {
		gaps_in  = 3,
  	gaps_out = 6,
		resize_on_border = false,
		allow_tearing = false,
		layout = master,
		border_size = 0,
	},

	decoration = {
		rounding = 14,
  	rounding_power = 7,
	},

	animations = {
  	enabled = true,
  },
})

-- animation functions
hl.curve("md3_decel", { type = "bezier", points = { {0.05, 0.7}, {0.1, 1} } })
hl.curve("easeOutExpo", { type = "bezier", points = { {0.16, 1}, {0.3, 1} } })
hl.animation({ leaf = "windows",          enabled = false, speed = 3,   bezier = "md3_decel",   style = "popin 60%" })
hl.animation({ leaf = "border",           enabled = false, speed = 10,  bezier = "default" })
hl.animation({ leaf = "fade",             enabled = false, speed = 2.5, bezier = "md3_decel" })
hl.animation({ leaf = "specialWorkspace",  enabled = false, speed = 3,   bezier = "md3_decel",   style = "slidevert" })
hl.animation({ leaf = "workspaces",        enabled = true,  speed = 3.5, bezier = "easeOutExpo", style = "slide" })
