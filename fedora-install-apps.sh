#!/bin/bash

sudo dnf update -y

# add repos
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo dnf install rpmfusion-nonfree rpmfusion-nonfree-steam rpmfusion-nonfree-updates -y
sudo dnf config-manager --enable fedora-cisco-openh264 -y

sudo dnf update -y

# install virtualization
sudo dnf group install --with-optional virtualization -y
sudo systemctl start libvirtd
sudo systemctl enable libvirtd

## fedora linux apps
# install steam
sudo dnf install steam -y

# fix problem with mesa drivers and game recording on steam
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld -y
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld -y
sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686 -y
sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686 -y

# install cooler control
sudo dnf install dnf-plugins-core -y
sudo dnf copr enable codifryed/CoolerControl
sudo dnf install coolercontrol -y
sudo systemctl enable --now coolercontrold

# install fcitx 5 && Fcitx 5 - Mocz for Fcitx 5
sudo dnf install fcitx5 -y
sudo dnf install fcitx5-mozc -y

# install cpux
sudo dnf install cpu-x -y

# install xournal++
sudo dnf install xournal -y

# install Bottles
sudo dnf install bottles -y

# install CoreCtrl
sudo dnf install corectrl -y

# install Mangohud
sudo dnf install mangohud -y

# install GOverlay
sudo dnf install goverlay -y

# install OpenRGB
sudo dnf install openrgb -y

## flatpak apps
# install Vivaldi
flatpak install flathub com.vivaldi.Vivaldi

# install Thunderbird
flatpak install flathub org.mozilla.Thunderbird

# install Lutris
flatpak install flathub net.lutris.Lutris

# install Gear Lever
flatpak install flathub it.mijorus.gearlever

# install Telegram Desktop
flatpak install flathub org.telegram.desktop

# install KiCad
flatpak install flathub org.kicad.KiCad

# install PCSX2
flatpak install flathub net.pcsx2.PCSX2

# install Vesktop
flatpak install flathub dev.vencord.Vesktop

# install VLC
flatpak install flathub org.videolan.VLC

# install Discord
flatpak install flathub com.discordapp.Discord

# install Anki
flatpak install flathub net.ankiweb.Anki

# install Document Scanner
flatpak install flathub org.gnome.SimpleScan

# install FreeCAD
flatpak install flathub org.freecad.FreeCAD

# install FurMark
flatpak install flathub com.geeks3d.furmark

# install KTorrent
flatpak install flathub org.kde.ktorrent

# install OBS Studio
flatpak install flathub com.obsproject.Studio

# install OBS VkCapture

# install Obsidian
flatpak install flathub md.obsidian.Obsidian

# install PolyMC
flatpak install flathub org.polymc.PolyMC

# install Portfolio Performance
flatpak install flathub info.portfolio_performance.PortfolioPerformance

# install Qcalculate!
flatpak install flathub io.github.Qalculate.qalculate-qt

# install RPCS3
flatpak install flathub net.rpcs3.RPCS3

# install Ryujinx
flatpak install flathub org.ryujinx.Ryujinx

# install SonoBus
flatpak install flathub net.sonobus.SonoBus

# install ASCII Draw
flatpak install flathub io.github.nokse22.asciidraw

# install Krita
flatpak install flathub org.kde.krita

# install helvum
flatpak install flathub org.pipewire.Helvum