#!/bin/bash

sudo pacman -Syuu
sudo pacman -S network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio alsa alsa-utils sxiv
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S i3-gaps i3lock i3status ttf-dejavu i3blocks dmenu alacritty firefox

echo "Done, please work...."
