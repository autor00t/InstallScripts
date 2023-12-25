#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
# DP-5 is my main monitor
MONITOR=DP-0 polybar main &

MONITOR=DP-5 polybar base &

MONITOR=HDMI-0 polybar base &

echo "Polybar launched..."
