-- -> ~/.local/state/hypr/

-- hyprland blur
hl.config({
	decoration = {
		blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
      ignore_opacity = false,
      vibrancy = 0.1696,
      special = false,
		},
	},
})

-- noctalia blur
hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
