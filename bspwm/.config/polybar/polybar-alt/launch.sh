#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# DP-5 is my main monitor
MONITOR=DP-5 polybar left &
MONITOR=DP-5 polybar center &
MONITOR=DP-5 polybar right-tray &

MONITOR=HDMI-0 polybar left &
MONITOR=HDMI-0 polybar center &
MONITOR=HDMI-0 polybar right &

# MONITOR=DP-1 polybar left &
# MONITOR=DP-1 polybar center &
# MONITOR=DP-1 polybar right &

echo "Polybar launched..."
