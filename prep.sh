#!/usr/bin/env nix-shell
#!nix-shell -p neovim git --run "bash ./prep.sh"

git clone https://github.com/unluckytau/.nixos.git
cp /etc/nixos/hardware-configuration.nix /home/tau/.nixos/system/hardware-configuration.nix

mkdir -p /home/tau/.local/state/hypr
cp /home/tau/.nixos/etc/display.lua /home/tau/.local/state/hypr/
