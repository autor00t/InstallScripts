#!/bin/bash

sudo pacman -Syuu
sudo pacman -S network-manager-applet dialog wpa_supplicant bluez bluez-utils xdg-user-dirs pulseaudio pavucontrol alsa alsa-utils feh playerctl archlinux-keyring
sudo pacman -S xorg xorg-xinit
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc

sudo pacman -S bspwm sxhkd ttf-dejavu polybar rofi kitty firefox lxsession neofetch vlc parted gparted lxappearance xclip
yay -S pfetch vim-plug
sudo pacman -S thunderbird thunderbird-i18n-es-es
sudo pacman -S cups cups-pdf thunar thunar-archive-plugin ark
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
echo "Remember to add the cups-pdf printer"

sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation mathjax
yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family nerd-fonts-jetbrains-mono-160

#wqy-zenhei is for Asian languages
sudo pacman -S discord steam wqy-zenhei fuse ntfs-3g udisks2 udiskie code flameshot zathura zathura-pdf-mupdf dunst
yay -S spotify picom-git rar

sudo pacman -S --needed ttf-caladea ttf-carlito ttf-dejavu ttf-liberation ttf-linux-libertine-g noto-fonts adobe-source-code-pro-fonts adobe-source-sans-pro-fonts adobe-source-serif-pro-fonts
yay -S ttf-gentium-basic

sudo pacman -S libreoffice-still hunspell-es_cl

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

sudo pacman -S python python-pip python-pywal papirus-icon-theme
yay -S themix-full-git # For the gtk theme
pip install --user colorz
# Just do wal -i "picture", and remember to put the line (cat ~/.cache/wal/sequences &) on your .zshrc
# Also, remember to create this function on your .zshrc:
# wal-scale() {
#     wal -n -i "$@"
#     feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
# }

# Virtual box things
sudo pacman -S virtualbox virtualbox-host-modules-arch virtualbox-guest-iso
yay -S virtualbox-ext-oracle   
# Also, remember to add the user to the vboxusers group

sudo pacman -S net-tools wireless_tools

# Oh my zsh
sudo pacman -S zsh wget
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# You need to manually insert the next two lines, idk why but in the script $ZSH_CUSTOM is just... skipped
# git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

echo "Done, please work...."
