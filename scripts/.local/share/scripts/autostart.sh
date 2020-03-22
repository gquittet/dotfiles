#!/usr/bin/env sh

autostart () {
	killall $1
	while pgrep -u $UID -x $1 >/dev/null; do sleep 1; done
	$2 &
}


autostart picom "picom --config=$HOME/.config/picom/picom.conf"
autostart dunst "/home/gquittet/.scripts/launch_dunst.sh"
autostart nm-applet "nm-applet"
autostart blueman-tray "blueman-tray"
autostart redshift "redshift -l 50.4:3.8"
autostart lxpolkit "/usr/bin/lxpolkit"

