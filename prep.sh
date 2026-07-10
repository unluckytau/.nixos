#!/usr/bin/env nix-shell
#!nix-shell -p neovim git --run "bash ./install.sh"

git clone https://github.com/unluckytau/.nixos.git
cp /etc/nixos/hardware-configuration.nix /home/tau/.nixos/system/hardware-configuration.nix
