{ config, pkgs, lib, ... }:

{
	plugins.treesitter = {
		enable = true;
		settings = {
			ensure_installed = [
				"rust"
				"python"
				"c"
				"nix"
				"lua"
				"typst"
				"bash"
				"markdown"
			];
			highlight.enable = true;
		};
	};
}
