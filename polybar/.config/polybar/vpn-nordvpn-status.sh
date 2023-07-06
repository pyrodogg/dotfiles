#!/bin/zsh
# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/vpn-nordvpn-status

#CONNECTION=$(nmcli -f name,device connection show | grep wlp2s0 | cut -d ' ' -f1)
KNOWNWIFI="$HOME/.knownwifi"
CONNECTION=$(wicd-cli -dy | grep Essid | cut -d ' ' -f2)
STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)
ENCRYPT=$(wicd-cli -d --wireless | grep 'Encryption' | cut -d ' ' -f2)


if [ "$STATUS" = "Connected" ]; then
  echo "%{F#82E0AA}%{A1:nordvpn d:}$(nordvpn status | grep City | cut -d ':' -f2)%{A}%{F-}"
else

  if grep -q -x -F "${CONNECTION}" "${KNOWNWIFI}"; then  
    # Connected to known wifi, no warning
    echo ""
  else
    # Display either the vpn connection name, or 'No VPN'
    # %{F#f00} - color formatting RED
    # %{A1 action on left click
    if [ "$ENCRYPT" = "Off" ]; then
      echo "%{A1:nordvpn c:}%{F#000}%{B#f00}no vpn%{F-}%{B-}%{A}"
    else
      echo "%{A1:nordvpn c:}%{F#f00}no vpn%{F-}%{A}"
    fi
  fi
fi
