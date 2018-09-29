#!/bin/bash

# Terminate already running bar instances
# killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# monitors=($(polybar --list-monitors | cut -d":" -f1))
main_monitor=eDP1
MONITOR=$main_monitor polybar -r primary &
# secondary_monitors=(${monitors[@]/(${main_monitor})})
# for m in $secondary_monitors; do
    # MONITOR=$m polybar -r secondary &
# done
