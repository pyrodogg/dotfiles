#!/bin/sh
# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/vpn-nordvpn-status

CONNECTION=$(nmcli -f name,device connection show | grep wlp2s0 | cut -d ' ' -f1)
STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    echo "%{F#82E0AA}%{A1:nordvpn d:}$(nordvpn status | grep City | cut -d ':' -f2)%{A}%{F-}"
else
    if [ "$CONNECTION" = "${HOME_WIFI}" ]; then
        echo ""
    else
        echo "%{F#f00}%{A1:nordvpn c:}no vpn%{A}%{F-}"
    fi
fi
