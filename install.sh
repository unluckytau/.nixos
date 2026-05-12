#!/usr/bin/env nix-shell
#!nix-shell -p vim git --run "bash ./install.sh"

git clone https://github.com/unluckytau/.nixos.git
git clone https://github.com/unluckytau/hyprland.git

sudo cp /etc/nixos/hardware-configuration.nix /home/tau/.nixos/system/hardware-configuration.nix

cd .nixos/

git add .

sudo nixos-rebuild switch --flake .#Tau
