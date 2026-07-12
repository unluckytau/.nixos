# <p align="center"> NixOS Flake ❄️ </p>

<p align="center">
    <img src="etc/view.png" alt="Preview">
</p>

**`Preparation`**
```bash
curl https://raw.githubusercontent.com/unluckytau/.nixos/main/prep.sh > prep.sh
```

**`Flatpaks`**

1. Add Flathub Remote
```
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
2. My Flatpaks
```
flatpak install flathub app.zen_browser.zen io.gitlab.librewolf-community org.libreoffice.LibreOffice com.discordapp.Discord org.gimp.GIMP com.github.jeromerobert.pdfarranger -y
```

**`Note:`**

On First install,

1. disable import for `./nixvim` in `./nixos/home/default.nix`
2. disable import for `./misc.nix` in `./nixos/system/default.nix`
3. Re-enable after system is successfully installed.
