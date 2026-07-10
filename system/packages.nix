{ config, pkgs, lib, ... }:

{
  # system packages
  environment.systemPackages = with pkgs; [
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

  git
  gcc
  gnumake
  cmake
  python3
  rustup
  rust-analyzer
  typst

  protonup-qt
  bibata-cursors
  ];
}
