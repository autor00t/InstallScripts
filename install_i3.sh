#!/bin/bash
echo "Remember to enable multilib and install yay"

sudo pacman -Syuu
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S i3-gaps i3lock i3status ttf-dejavu i3blocks dmenu alacritty chromium alsa-utils

echo "Done, please work...."
