{ inputs, pkgs, ... }:

{
	programs.noctalia.enable = true;
	xdg.configFile."noctalia/noctalia.toml".source = ../noctalia/noctalia.toml;
	xdg.configFile."noctalia/palettes/ember-noctalia.json".source = ../noctalia/ember-noctalia.json;
}
