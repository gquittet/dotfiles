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

autostart picom 'picom -bc -d :0 --config=$HOME/.config/picom/picom.conf'
autostart dunst 'dunst'
autostart lxpolkit '/usr/bin/lxpolkit'
autostart nm-applet 'nm-applet'
autostart blueman-tray 'blueman-tray'
autostart redshift 'redshift -l 50.4:3.8'
autostart greenclip 'greenclip daemon'
autostart kdeconnectd '/usr/lib/kdeconnectd'
autostart kdeconnect- 'kdeconnect-indicator'

