#!/usr/bin/env sh

FILE="$HOME/.cache/brightness"

[ ! -f $FILE ] && touch $FILE

LEVEL="${2:-5}"

update_brightness () {
	xbacklight | cut -d. -f1 > $FILE
}

case "$1" in
	-inc) xbacklight -inc $LEVEL && update_brightness ;;
	-dec) xbacklight -dec $LEVEL && update_brightness ;;
esac > /dev/null

killall -SIGUSR1 i3status
