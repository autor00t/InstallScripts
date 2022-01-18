#!/bin/bash
echo "Remember to enable multilib"

sudo pacman -Syuu
sudo pacman -S mesa lib32-mesa xorg xorg-xinit plasma-desktop
sudo pacman -S firefox plasma-nm plasma-pa dolphin alacritty kdeplasma-addons kde-gtk-config ark powerdevil neofetch
sudo pacman -S kuickshow okular xdg-utils vlc
sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation
yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family
yay -S fim
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "Remember to modify the .xinitrc file, exec startplasma-x11"

echo "Done"
