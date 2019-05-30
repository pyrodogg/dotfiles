#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep -x compton)" ]; then
            pkill compton
        else
            compton -b --config ~/.config/compton/config
        fi
        ;;
    *)
        if [ "$(pgrep -x compton)" ]; then
            echo ""
        else
            echo ""
        fi
        ;;
esac
