{ config, pkgs, lib, ... }:

{
	programs.steam.enable = true;
	programs.steam.gamescopeSession.enable = true;
	programs.gamemode.enable = true;

	programs.nix-ld.enable = true;
	programs.nix-ld.libraries = with pkgs; [
		stdenv.cc.cc.lib
		zlib
		glib
		xorg.libX11
	];

	environment.systemPackages = with pkgs; [
		# core utils
		wget 
		curl 
		wl-clipboard 
		zip
		unzip 
		p7zip 
		libarchive 
		flatpak 
		htop 
		fzf 
		ripgrep 
		fd 
		killall 
		brightnessctl

		# dev tools
		git 
		gcc 
		gnumake 
		cmake 
		gfortran 
		python3 
		uv 
		rustup 
		rust-analyzer
		typst

		# apps
		protonup-qt
		
		# misc
		bibata-cursors
	];
}
