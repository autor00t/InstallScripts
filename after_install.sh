#!/bin/bash

pacman -S  network-manager-applet dialog wpa_supplicant base-devel linux-headers bluez bluez-utils xdg-utils xdg-user-dirs pulseaudio alsa-utils
systemctl enable bluetooth
systemctl enable fstrim.timer

# Once you install nvidia drivers remember to modify /etc/mkinitcpio.conf
