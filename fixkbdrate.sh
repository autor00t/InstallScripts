#!/bin/sh

sudo cp kbdrate.service /etc/systemd/system/

sudo systemctl enable kbdrate.service
