{ inputs, pkgs, ... }:

{
	programs.noctalia.enable = true;
	xdg.configFile."noctalia/noctalia.toml".source = ../etc/noctalia.toml;
	xdg.configFile."noctalia/palettes/ember-noctalia.json".source = ../etc/ember-noctalia.json;
}
