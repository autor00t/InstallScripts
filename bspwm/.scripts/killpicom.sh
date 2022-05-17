#!/bin/sh

killall picom
"$@"
picom --experimental-backend --config ~/.config/picom/picom.conf &
