#!/usr/bin/env bash

# Terminate already running bar instances
killall -q notify-osd
killall -q dunst

# Wait until the processes have been shut down
while pgrep -u $UID -x notify-osd >/dev/null; do sleep 1; done
while pgrep -u $UID -x dunst > /dev/null; do sleep 1; done

dunst -conf $HOME/.config/dunst/dunstrc

echo "Dunst launched..."
