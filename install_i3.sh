#!/bin/bash

sudo pacman -Syuu
sudo pacman -S network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio alsa-utils
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S i3-gaps i3lock i3status ttf-dejavu i3blocks dmenu alacritty chromium

echo "Done, please work...."
