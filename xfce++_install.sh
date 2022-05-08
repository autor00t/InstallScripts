#!/bin/bash

sudo pacman -Syuu
sudo pacman -S xorg xorg-xinit xfce4 xfce4-goodies
sudo pacman -S opera network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio pavucontrol alsa alsa-utils
sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation
yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "Remember to modify the .xinitrc file, exec startxfce4"

echo "Done"
