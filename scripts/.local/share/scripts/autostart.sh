#!/usr/bin/env sh

autostart () {
	killall $1
	while pgrep -u $UID -x $1 >/dev/null; do sleep 1; done
	$2 &
}

autostart_systemd () {
	systemctl --user stop "$1.service"
	while pgrep -u $UID -x $1 >/dev/null; do sleep 1; done
	systemctl --user start "$1.service"
}

autostart picom "picom --config=$HOME/.config/picom/picom.conf"
autostart dunst dunst
autostart nm-applet nm-applet
autostart blueman-tray blueman-tray
autostart redshift "redshift -l 50.4:3.8"
autostart lxpolkit /usr/bin/lxpolkit
autostart greenclip "greenclip daemon"

