#!/bin/bash

sudo pacman -Syuu
sudo pacman -S network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio pavucontrol alsa alsa-utils sxiv nitrogen playerctl archlinux-keyring
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S bspwm sxhkd ttf-dejavu polybar dmenu kitty firefox lxsession neofetch vlc parted gparted lxappearance
yay -S pfetch
sudo pacman -S thunderbird thunderbird-i18n-es-es
sudo pacman -S cups cups-pdf thunar thunar-archive-plugin ark
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
echo "Remember to add the cups-pdf printer"

sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation ttf-font-awesome mathjax
yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family

#wqy-zenhei is for Asian languages
sudo pacman -S discord steam wqy-zenhei fuse ntfs-3g udisks2 udiskie code flameshot zathura zathura-pdf-mupdf dunst
yay -S spotify picom-git

sudo pacman -S --needed ttf-caladea ttf-carlito ttf-dejavu ttf-liberation ttf-linux-libertine-g noto-fonts adobe-source-code-pro-fonts adobe-source-sans-pro-fonts adobe-source-serif-pro-fonts
yay -S ttf-gentium-basic

sudo pacman -S libreoffice-still hunspell-es_cl

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

echo "Done, please work...."
