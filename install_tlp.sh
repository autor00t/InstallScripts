#!/bin/bash

echo "Installing TLP...."
sudo pacman -S awk grep sed ethtool hdparm iw pciutils rfkill smartmontools udev usbutils util-linux
sudo pacman -S tlp tlpui
sudo systemctl enable tlp.service
sudo systemctl start tlp.service

echo "Done"
