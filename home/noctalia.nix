{ inputs, pkgs, ... }:

{
	programs.noctalia.enable = true;
	xdg.configFile."noctalia/noctalia.toml".source = ../etc/noctalia.toml;
}
