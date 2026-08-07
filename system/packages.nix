{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  # core
  wget
  curl
  wl-clipboard
  zip
  unzip
  p7zip
  libarchive
  ffmpeg
  flatpak
  htop
  fzf
  ripgrep
  fd
  killall
  brightnessctl

  # dev
  git
  python3
  rustup
  rust-analyzer
  typst

  # c++ toolchain
  gcc
  gnumake
  cmake
  gdb

  # misc
  bibata-cursors
  ];
}
