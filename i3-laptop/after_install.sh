#!/bin/bash

echo "Remember to replace with username"

sudo pacman -S udisks2 
yay -S bashmount polybar:w

gpasswd -a replace_with_user storage

echo "Done"
