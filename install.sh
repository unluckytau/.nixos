#!/usr/bin/env nix-shell
#!nix-shell -p vim git --run "bash ./install.sh"

git clone https://github.com/tau-zeta/.nixos.git
git clone https://github.com/tau-zeta/hyprland.git

sudo cp /etc/nixos/hardware-configuration.nix /home/tau/.nixos/nixos/hardware-configuration.nix

cd .nixos/

git add .

sudo nixos-rebuild switch --flake .#Tau
