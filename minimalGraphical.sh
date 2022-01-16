#!/bin/sh
echo "Remember to enable multilib"

sudo pacman -Syuu
sudo pacman -S mesa lib32-mesa xorg xorg-xinit plasma-desktop
sudo pacman -S firefox plasma-nm plasma-pa dolphin konsole kdeplasma-addons kde-gtk-config ark powerdevil
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "Remember to modify the .xinitrc file, exec startplasma-x11"

echo "Installing TLP...."
sudo pacman -S awk grep sed ethtool hdparm iw pciutils rfkill smartmontools udev usbutils util-linux
sudo pacman -S tlp
sudo systemctl enable tlp.service
sudo systemctl start tlp.service

echo "Done"
