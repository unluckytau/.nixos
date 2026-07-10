{ config, pkgs, lib, inputs, ... }:

{
	imports = [
		./bash.nix
		./nixvim
		./hypr.nix
		./noctalia.nix
	];

	programs.kitty = {
		enable = true;
		settings = {
			font_family = "JetBrainsMono Nerd Font";
			font_size = "11";
			bold_font = "auto";
			italic_font = "auto";
			bold_italic_font = "auto";
			tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
			window_padding_width = "0 10";
			hide_window_decorations = "yes";
			tab_bar_edge = "top";
			tab_bar_style = "powerline";
			tab_powerline_style = "slanted";
			cursor_shape = "block";
			cursor_blink_interval = "0.5";
			enable_audio_bell = "no";
			confirm_os_window_close = "0";
		};
		shellIntegration.mode = "no-cursor";
		extraConfig = ''
			include ${../etc/ember.conf}
		'';
	};

	programs.starship = {
		enable = true;
		enableBashIntegration = true;
	};
}
