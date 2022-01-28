#!/bin/bash

sudo pacman -Syuu
sudo pacman -S network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio pavucontrol alsa alsa-utils sxiv nitrogen
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S i3-gaps i3lock i3status ttf-dejavu i3blocks dmenu kitty firefox lxsession
sudo pacman -S cups cups-pdf gnome-screenshot thunar thunar-archive-plugin
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
echo "Remember to add the cups-pdf printer"

echo "Done, please work...."
