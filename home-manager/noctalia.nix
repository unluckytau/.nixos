{ pkgs, inputs, ... }:
{
	imports = [
		inputs.noctalia.homeModules.default
	];

	programs.noctalia-shell.enable = true;
	xdg.configFile."noctalia/settings.json".source = ../etc/settings.json;
}
