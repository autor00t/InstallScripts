#!/bin/bash

sudo pacman -Syuu
sudo pacman -S network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio pavucontrol alsa alsa-utils sxiv nitrogen
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S i3-gaps i3lock i3status ttf-dejavu polybar dmenu kitty opera opera-ffmpeg-codecs lxsession pfetch neofetch vlc parted gparted
sudo pacman -S cups cups-pdf thunar thunar-archive-plugin ark
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
echo "Remember to add the cups-pdf printer"

sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation
yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family

#wqy-zenhei is for Asian languages
sudo pacman -S discord steam wqy-zenhei fuse ntfs-3g udisks2 udiskie code
yay -S spotify picom-git autotiling

echo "Done, please work...."
