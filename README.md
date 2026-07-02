# <p align="center"> `NixOS Flake ❄️` </p>

**`Installation`**
```
curl https://raw.githubusercontent.com/unluckytau/.nixos/main/install.sh > install.sh
chmod +x ./install.sh
./install.sh
```

---
**`Flatpaks`**

1. Flathub Remote
```
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
2. My Flatpaks
```
flatpak install flathub app.zen_browser.zen io.gitlab.librewolf-community org.libreoffice.LibreOffice com.discordapp.Discord org.gimp.GIMP com.github.jeromerobert.pdfarranger -y
```

---
**`To do list`**
- [ ] configure `xdg.mime`
