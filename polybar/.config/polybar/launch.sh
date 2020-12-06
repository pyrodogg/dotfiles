#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

source ~/.zshrc.secrets

# https://github.com/polybar/polybar/issues/763
if type "xrandr">/dev/null; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    # Launch topbar
    MONITOR=$m polybar -r topbar &
  done
else
  polybar -r topbar &
fi

echo "Bars launched..."
