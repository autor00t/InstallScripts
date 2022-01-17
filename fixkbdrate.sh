#!/bin/bash

sudo cp kbdrate.service /etc/systemd/system/
sudo systemctl enable kbdrate.service

kbdrate -d 600 -r 33
echo "Done"
