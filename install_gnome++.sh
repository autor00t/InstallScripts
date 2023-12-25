#!/bin/bash

sudo pacman -Syuu
sudo pacman -S xorg gnome gdm
sudo systemctl enable gdm.service
sudo pacman -S bluez bluez-utils archlinux-keyring

sudo pacman -S ttf-dejavu kitty firefox neofetch vlc parted gparted xclip
yay -S pfetch vim-plug
sudo pacman -S thunderbird thunderbird-i18n-es-es
sudo pacman -S cups cups-pdf thunar thunar-archive-plugin ark
sudo systemctl enable cups.socket
sudo systemctl start cups.socket
echo "Remember to add the cups-pdf printer"

sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts ttf-liberation mathjax
yay -S ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family nerd-fonts-jetbrains-mono-160

#wqy-zenhei is for Asian languages
sudo pacman -S discord steam wqy-zenhei fuse ntfs-3g udisks2 udiskie code flameshot zathura zathura-pdf-mupdf
yay -S spotify rar

sudo pacman -S --needed ttf-caladea ttf-carlito ttf-dejavu ttf-liberation ttf-linux-libertine-g noto-fonts adobe-source-code-pro-fonts adobe-source-sans-pro-fonts adobe-source-serif-pro-fonts
yay -S ttf-gentium-basic

sudo pacman -S libreoffice-still hunspell-es_cl

sudo pacman -S python python-pip

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
