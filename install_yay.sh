#!/bin/sh

sudo pacman -Syuu
sudo pacman -S git base-devel

git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ..
sudo rm -r yay-git

echo "Done"
