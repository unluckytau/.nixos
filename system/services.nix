{ config, pkgs, lib, ... }:

{
	services.flatpak.enable = true;
	services.openssh.enable = true;
	services.udisks2.enable = true;
	services.upower.enable = true;
	services.power-profiles-daemon.enable = true;
}
