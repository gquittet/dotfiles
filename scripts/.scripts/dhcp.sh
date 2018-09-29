#!/bin/bash

if [ -n $1 ]; then
    sudo dhcpcd $1 &> /dev/null
else
    sudo dhcpcd &> /dev/null
fi

appname="WiFi"

function cidrToNetwork {
        networkmask=""
        cidrmask=$1
        for i in {0..31}; do
            if (( $i < $cidrmask )) ; then
                if [[ $(($i % 8)) == 0 && $i > 0 ]]; then
                    networkmask="$networkmask."
                fi
                networkmask="$networkmask""1"
            else
                if [[ $i == $cidrmask ]]; then
                    networkmask="$networkmask.0"
                else
                    networkmask="$networkmask""0"
                fi
            fi
        done
        networkmaskPart1=$(echo $networkmask | cut -d "." -f 1)
        networkmaskPart2=$(echo $networkmask | cut -d "." -f 2)
        networkmaskPart3=$(echo $networkmask | cut -d "." -f 3)
        networkmaskPart4=$(echo $networkmask | cut -d "." -f 4)
        echo $(printf "%d%c%d%c%d%c%d" $((2#$networkmaskPart1)) "."  $((2#$networkmaskPart2)) "." $((2#$networkmaskPart3)) "." $((2#$networkmaskPart4)))
}

if [ $? -eq 0 ]; then
    icon="/usr/share/icons/Papirus/64x64/devices/network-wireless-hotspot.svg"
    title="Successfully connected!"
    if [ -n $1 ]; then
        ip=$(ip addr show $1 | grep inet | cut -d "t" -f 2 | cut -d " " -f 2 | head -n 1)
        broadcast=$(ip addr show wlp3s0 | grep inet | cut -d "t" -f 2 | cut -d " " -f 4 | head -n 1)
        ipaddress=$(echo $ip | cut -d "/" -f 1)
        route=$(ip route | head -n 1 | cut -d "a" -f 3 | cut -d " " -f 2)
        cidrmask=$(echo $ip | cut -d "/" -f 2)
        networkmask=$(cidrToNetwork $cidrmask)
        content="Your IP: $ipaddress\nMask: $networkmask\nBroadcast: $broadcast\nGateway: $route"
    else
        content="You're now connected to the network. Enjoy!"
    fi
else
    icon="/usr/share/icons/Papirus/64x64/devices/network-wireless.svg"
    title="Connection failed!"
    content="Unable to get an IP address."
fi

notify-send -a "$appname" -u normal -i "$icon" "$title" "$content"
