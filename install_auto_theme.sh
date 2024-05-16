#!/bin/bash

sudo pacman -Syuu

sudo pacman -S python python-pip python-pywal papirus-icon-theme
yay -S themix-full-git # For the gtk theme

sudo pacman -S python-pillow python-scipy
git clone https://aur.archlinux.org/colorz.git
cd colorz
makepkg -si
cd ..
sudo rm -r colorz

# Just do wal -i "picture", and remember to put the line (cat ~/.cache/wal/sequences &) on your .zshrc
# Also, remember to create this function on your .zshrc:
# wal-scale() {
#     wal -n -i "$@"
#     feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
# }

echo "Done!!"
